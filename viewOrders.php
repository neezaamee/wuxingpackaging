<?php include "connection.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Orders View</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <!-- Includes from static includes -->
    <?php include "layout/headStaticIncludes.php"; ?>
    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
</head>
<style>
    .dataTables_wrapper .dataTables_filter input {
            width: auto;
            display: inline-block;
        }
        .dataTables_wrapper .dataTables_length select {
            width: auto;
            display: inline-block;
        }
        /* table.dataTable th,
        table.dataTable td {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        } */
        table.dataTable th {
            font-size: 0.875em;
        }
</style>

<body>
    <!-- Topbar Start -->
    <?php include "partials/topBar.php"; ?>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <?php include "partials/Navbar.php"; ?>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <?php $pageTitle = "View All Orders"; ?>
    <?php include "partials/pageHeader.php"; ?>
    <!-- Page Header End -->

    <!-- Orders Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-12 mb-5">
                <div class="table-responsive">
                    <table id="ordersTable" class="display table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Customer Name</th>
                                <th>Note</th>
                                <th>Subtotal</th>
                                <th>Shipping Fee</th>
                                <th>Discount</th>
                                <th>Grand Total</th>
                                <th>Status</th>
                                <th>Items</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            // Fetching all statuses from the status table
                            $status_sql = "SELECT * FROM statuses where idstatus = 18";
                            $status_result = $con->query($status_sql);
                            $statuses = [];
                            if ($status_result->num_rows > 0) {
                                while ($status_row = $status_result->fetch_assoc()) {
                                    $statuses[] = $status_row;
                                }
                            }

                            $sql = "SELECT * FROM orders WHERE status != 10";
                            $result = $con->query($sql);

                            if ($result->num_rows > 0) {
                                $Serial = 1;
                                // Output data of each row
                                while ($row = $result->fetch_assoc()) {
                                    //fetching status name
                                    $statusID = $row["status"];
                                    $statusQ = "SELECT name FROM statuses WHERE id = '$statusID'";
                                    $statusRow = $con->query($statusQ)->fetch_assoc();
                                    $statusName = $statusRow['name'];
                                    //fetching customer name
                                    $customerID = $row["idcustomer"];
                                    $customerQ = "SELECT firstname, lastname FROM customers WHERE id = '$customerID'";
                                    $customerRow = $con->query($customerQ)->fetch_assoc();
                                    $customerName = $customerRow['firstname'] . ' ' . $customerRow['lastname'];

                                    echo "<tr>
                                            <td>{$Serial}</td>
                                            <td><a href='#' data-toggle='modal' data-target='#customerModal' onclick='loadCustomerDetails({$customerID})'>{$customerName}</a></td>
                                            <td>{$row['note']}</td>
                                            <td class='text-center'>{$row['subtotal']}</td>
                                            <td class='text-center'>{$row['shippingfee']}</td>
                                            <td class='text-center'>{$row['discount']}</td>
                                            <td class='text-center'>{$row['grandtotal']}</td>
                                            <td>{$statusName}</td>
                                            <td>
                                                <button class='btn btn-info btn-sm' data-toggle='modal' data-target='#itemsModal' onclick='loadOrderItems({$row['id']})'>View</button>
                                            </td>
                                            <td>
                                                <form method='post' action='update_order_status.php' class='d-inline'>
                                                    <input type='hidden' name='order_id' value='{$row['id']}'>
                                                    <select name='status_id' class='form-control form-control-sm mb-2' onchange='this.form.submit()'>";
                                    foreach ($statuses as $status) {
                                        echo "<option value='{$status['id']}' " . ($status['id'] == $row['status'] ? 'selected' : '') . ">{$status['name']}</option>";
                                    }
                                    echo "          </select>
                                                </form>
                                                <form method='post' action='delete_order.php' class='d-inline'>
                                                    <input type='hidden' name='order_id' value='{$row['id']}'>
                                                    <button type='submit' class='btn btn-danger btn-sm' onclick='return confirm(\"Are you sure you want to delete this order?\");'>Delete</button>
                                                </form>
                                            </td>
                                          </tr>";
                                    $Serial++;
                                }
                            } else {
                                echo "<tr><td colspan='10' class='text-center'>No orders found</td></tr>";
                            }
                            $con->close();
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Orders End -->

    <!-- Modal -->
    <div class="modal fade" id="itemsModal" tabindex="-1" role="dialog" aria-labelledby="itemsModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="itemsModalLabel">Ordered Items</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <ol id="orderItemsList" class="list-group">
                        <!-- Order items will be loaded here dynamically using AJAX -->
                    </ol>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Customer Modal -->
    <div class="modal fade" id="customerModal" tabindex="-1" role="dialog" aria-labelledby="customerModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="customerModalLabel">Customer Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <ul id="customerDetailsList" class="list-group">
                        <!-- Customer details will be loaded here dynamically using AJAX -->
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer Start + Back to Top -->
    <?php include "layout/Footer.php"; ?>
    <!-- Footer End -->

    <!-- Footer JS Includes -->
    <?php include "layout/footerJsIncludes.php"; ?>
    <!-- Data Table and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#ordersTable').DataTable();
        });

        function loadOrderItems(orderId) {
            $.ajax({
                url: 'get_order_items.php',
                method: 'GET',
                data: { order_id: orderId },
                success: function (response) {
                    $('#orderItemsList').html(response);
                },
                error: function (error) {
                    console.log('Error:', error);
                }
            });
        }
        function loadCustomerDetails(customerId) {
            $.ajax({
                url: 'get_customer_details.php',
                method: 'GET',
                data: { customer_id: customerId },
                success: function (response) {
                    $('#customerDetailsList').html(response);
                },
                error: function (error) {
                    console.log('Error:', error);
                }
            });
        }
    </script>
</body>

</html>
