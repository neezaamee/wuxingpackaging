<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Wuxing Packaging | Your Trusted Packaging Material Supplier</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Packaging materials, boxes, bags, and more | Wuxing Packaging" name="keywords">
    <meta
        content="Discover a wide range of high-quality packaging materials at Wuxing Packaging. From boxes to bags, we've got you covered!"
        name="description">
    <!-- includes from static includes -->
    <?php include "layout/headStaticIncludes.php"; ?>
    <style>
        /* Add your custom styles here */
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
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="/">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Shopping Cart</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0" id="cartTable">
                    <!-- Table header -->
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Products</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th>Remove</th>
                        </tr>
                    </thead>
                    <!-- Table body -->
                    <tbody class="align-middle">
                        <!-- Cart items will be dynamically added here -->
                        <tr>
                            <td class="align-middle"><img src="img/product-1.jpg" alt="" style="width: 50px;"> Colorful
                                Stylish Shirt</td>
                            <td class="align-middle item-price">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text"
                                        class="form-control form-control-sm bg-secondary text-center item-quantity"
                                        value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle item-total">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary btn-remove" onclick="removeRow(this);">
                                    <i class="fa fa-times"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="img/product-2.jpg" alt="" style="width: 50px;"> Colorful
                                Stylish Shirt</td>
                            <td class="align-middle item-price">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text"
                                        class="form-control form-control-sm bg-secondary text-center item-quantity" value="1" onchange="handleQuantityChange(this)">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle item-total">$150</td>
                            <td class="align-middle">
                                <button class="btn btn-sm btn-primary btn-remove" onclick="removeRow(this)">
                                    <i class="fa fa-times"></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <form class="mb-5" action="">
                    <!-- Coupon code form -->
                    <div class="input-group">
                        <input type="text" class="form-control p-4" placeholder="Coupon Code">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Apply Coupon</button>
                        </div>
                    </div>
                </form>
                <!-- Cart summary -->
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Cart Summary</h4>
                    </div>
                    <div class="card-body" id="cartSummary">
                        <!-- Cart summary will be dynamically updated here -->
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <!-- Total amount -->
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Total</h5>
                            <h5 class="font-weight-bold" id="totalAmount">$0</h5>
                        </div>
                        <button class="btn btn-block btn-primary my-3 py-3">Proceed To Checkout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->

    <!-- Footer Start + Back to Top -->
    <?php include "layout/Footer.php"; ?>
    <!-- Footer End -->

    <!-- Footer JS Includes -->
    
    <script>
        // JavaScript code for cart functionality
        document.addEventListener("DOMContentLoaded", function () {
            // Function to update individual item total and grand total
            function updateTotals() {
                var grandTotal = 0;
                var rows = document.querySelectorAll("#cartTable tbody tr");

                rows.forEach(function (row) {
                    var priceElement = row.querySelector(".item-price");
                    var quantityElement = row.querySelector(".item-quantity");
                    var totalElement = row.querySelector(".item-total");

                    if (priceElement && quantityElement && totalElement) {
                        var price = parseFloat(priceElement.textContent.replace("$", ""));
                        var quantity = parseInt(quantityElement.value);
                        var total = price * quantity;
                        totalElement.textContent = "$" + total.toFixed(2);
                        grandTotal += total;
                    }
                });

                document.getElementById("totalAmount").textContent = "$" + grandTotal.toFixed(2);
            }

            // Function to handle plus and minus buttons
            function handlePlusMinusButtons() {
                var plusButtons = document.querySelectorAll(".btn-plus");
                var minusButtons = document.querySelectorAll(".btn-minus");

                plusButtons.forEach(function (button) {
                    button.addEventListener("click", function (event) {
                        event.preventDefault();
                        var quantityInput = button.parentElement.parentElement.querySelector(".item-quantity");
                        var currentValue = parseInt(quantityInput.value);
                        quantityInput.value = currentValue + 1;
                        updateTotals();
                    });
                });

                minusButtons.forEach(function (button) {
                    button.addEventListener("click", function (event) {
                        event.preventDefault();
                        var quantityInput = button.parentElement.parentElement.querySelector(".item-quantity");
                        var currentValue = parseInt(quantityInput.value);
                        if (currentValue > 1) {
                            quantityInput.value = currentValue - 1;
                            updateTotals();
                        }
                    });
                });
            }

            // Function to handle quantity change
            function handleQuantityChange() {
                var quantityInputs = document.querySelectorAll(".item-quantity");
                quantityInputs.forEach(function (input) {
                    input.addEventListener("change", function () {
                        updateTotals();
                    });
                });
            }

            // Function to handle remove button
            function handleRemoveButtons() {
                var removeButtons = document.querySelectorAll(".btn-remove");
                removeButtons.forEach(function (button) {
                    button.addEventListener("click", function (event) {
                        event.preventDefault();
                        var row = button.parentElement.parentElement;
                        row.remove();
                        updateTotals();
                    });
                });
            }
            
            // Initialize
            handlePlusMinusButtons();
            handleQuantityChange();
            handleRemoveButtons();
            updateTotals();
        });
        </script>

<?php //include_once "layout/footerJsIncludes.php"; ?>
</body>

</html>