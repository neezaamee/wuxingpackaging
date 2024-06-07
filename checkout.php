<?php include "connection.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Checkout</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <?php include "layout/headStaticIncludes.php"; ?>

    <style>
        /* Custom style */
    </style>
</head>

<body>
    <!-- Topbar Start -->
    <?php include "partials/topBar.php"; ?>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <?php include "partials/Navbar.php"; ?>
    <!-- Navbar End -->

    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 150px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Checkout</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Checkout</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Checkout Start -->
    <div class="container-fluid pt-5">
        <form id="checkout-form">
            <div class="row px-xl-5">
                <div class="col-lg-6">
                    <div class="mb-4">
                        <h4 class="font-weight-semi-bold mb-4">Shipping Address</h4>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label>First Name</label>
                                <input class="form-control" type="text" placeholder="John" name="firstname" required>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Last Name</label>
                                <input class="form-control" type="text" placeholder="Doe" name="lastname" required>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>E-mail</label>
                                <input class="form-control" type="email" placeholder="example@email.com" name="email" required>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Mobile No</label>
                                <input class="form-control" type="tel" placeholder="+123 456 789" name="phone" required>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Address Line 1</label>
                                <input class="form-control" type="text" placeholder="123 Street" name="address1" required>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>Address Line 2</label>
                                <input class="form-control" type="text" placeholder="123 Street" name="address2">
                            </div>
                            <div class="col-md-6 form-group">
                                <label>State</label>
                                <select class="custom-select" name="state" required>
                                    <?php
                                    // Check connection
                                    if ($con->connect_error) {
                                        die("Connection failed: " . $con->connect_error);
                                    }

                                    // SQL query to fetch states
                                    $sql = "SELECT id, name FROM states ORDER BY name ASC";
                                    $result = $con->query($sql);

                                    // Check if there are results and output options
                                    if ($result->num_rows > 0) {
                                        while ($row = $result->fetch_assoc()) {
                                            echo '<option value="' . $row['id'] . '">' . $row['name'] . '</option>';
                                        }
                                    } else {
                                        echo '<option value="">No states available</option>';
                                    }

                                    // Close connection
                                    $con->close();
                                    ?>
                                </select>
                            </div>
                            <div class="col-md-6 form-group">
                                <label>ZIP Code</label>
                                <input class="form-control" type="text" placeholder="123" name="zipcode" required>
                            </div>
                            <div class="col-md-12 form-group">
                                <label>Additional Description or Note</label>
                                <textarea class="form-control" rows="3" placeholder="Enter any additional notes here" name="additional-details"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card border-secondary mb-5">
                        <div class="card-header bg-secondary border-0">
                            <h4 class="font-weight-semi-bold m-0">Order Total</h4>
                        </div>
                        <div class="card-body">
                            <h5 class="font-weight-medium mb-3">Products</h5>
                            <div id="checkout-items"></div>
                            <hr class="mt-0">
                            <div class="d-flex justify-content-between mb-3 pt-1">
                                <h6 class="font-weight-medium">Subtotal</h6>
                                <h6 class="font-weight-medium" id="checkout-subtotal">$0.00</h6>
                            </div>
                            <div class="d-flex justify-content-between">
                                <h6 class="font-weight-medium">Shipping Fee</h6>
                                <h6 class="font-weight-medium" id="shipping-fee">$0.00</h6>
                            </div>
                        </div>
                        <div class="card-footer border-secondary bg-transparent">
                            <div class="d-flex justify-content-between mt-2">
                                <h5 class="font-weight-bold">Total</h5>
                                <h5 class="font-weight-bold" id="checkout-total">$10.00</h5>
                            </div>
                        </div>
                    </div>
                    <div class="card border-secondary mb-5">
                        <div class="card-footer border-secondary bg-transparent">
                            <button type="button" class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3" onclick="placeOrder()">Place Order</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <!-- Checkout End -->

    <!-- Footer Start -->
    <?php include "layout/Footer.php"; ?>
    <!-- Footer End -->

    <!-- JavaScript Libraries -->
    <?php include_once "layout/footerJsIncludes.php"; ?>

    <!-- Template Javascript -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            let checkoutContainer = document.getElementById('checkout-items');
            let subtotal = cart.reduce((sum, product) => sum + (product.price * product.quantity), 0);
            let shippingFee = 10.00; // Assuming a fixed shipping fee
            let total = subtotal + shippingFee;

            cart.forEach(product => {
                let productRow = `
                    <div class="d-flex justify-content-between">
                        <p class="mr-auto p-2" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis; text-align: left">${product.name}</p>
                        <p class="p-2">${product.quantity}</p>
                        <p class="p-2">$${(product.price * product.quantity).toFixed(2)}</p>
                    </div>
                `;
                checkoutContainer.innerHTML += productRow;
            });

            document.getElementById('checkout-subtotal').textContent = `$${subtotal.toFixed(2)}`;
            document.getElementById('shipping-fee').textContent = `$${shippingFee.toFixed(2)}`;
            document.getElementById('checkout-total').textContent = `$${total.toFixed(2)}`;
        });

        function placeOrder() {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            let formData = new FormData(document.getElementById('checkout-form'));

            formData.append('cart', JSON.stringify(cart));
            formData.append('subtotal', document.getElementById('checkout-subtotal').textContent.replace('$', ''));
            formData.append('shipping_fee', document.getElementById('shipping-fee').textContent.replace('$', ''));
            formData.append('total', document.getElementById('checkout-total').textContent.replace('$', ''));

            fetch('process_checkout.php', {
                    method: 'POST',
                    body: formData
                }).then(response => response.text())
                .then(data => {
                    alert(data);
                    localStorage.removeItem('cart');
                    window.location.href = 'thankyou.php';
                }).catch(error => console.error('Error:', error));
        }
    </script>
</body>

</html>