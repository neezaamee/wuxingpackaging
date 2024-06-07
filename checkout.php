<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Checkout</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <?php include "layout/headStaticIncludes.php"; ?>
    
    <style>
        /* Custom style01111111111111111111112 */

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
        <div class="row px-xl-5">
            <div class="col-lg-6">
                <div class="mb-4">
                    <h4 class="font-weight-semi-bold mb-4">Billing Address</h4>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>First Name</label>
                            <input class="form-control" type="text" placeholder="John">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Last Name</label>
                            <input class="form-control" type="text" placeholder="Doe">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>E-mail</label>
                            <input class="form-control" type="text" placeholder="example@email.com">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Mobile No</label>
                            <input class="form-control" type="text" placeholder="+123 456 789">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Address Line 1</label>
                            <input class="form-control" type="text" placeholder="123 Street">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Address Line 2</label>
                            <input class="form-control" type="text" placeholder="123 Street">
                        </div>
                        <!-- <div class="col-md-6 form-group">
                            <label>Country</label>
                            <select class="custom-select">
                                <option selected>United States</option>
                                <option>Afghanistan</option>
                                <option>Albania</option>
                                <option>Algeria</option>
                            </select>
                        </div> 
                        <div class="col-md-6 form-group">
                            <label>City</label>
                            <input class="form-control" type="text" placeholder="New York">
                        </div> 
                        <div class="col-md-6 form-group">
                            <label>State</label>
                            <input class="form-control" type="text" placeholder="New York">
                        </div> -->
                        <div class="col-md-6 form-group">
                            <label>State</label>
                            <select class="custom-select">
                                <option value="" selected>Abu Dhabi</option>
                                <option value="">Dubai</option>
                                <option value="">Sharjah</option>
                                <option value="">Ajman</option>
                                <option value="">Umm Al Quwain</option>
                                <option value="">Ras Al Khaimah</option>
                                <option value="">Fujairah</option>
                            </select>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>ZIP Code</label>
                            <input class="form-control" type="text" placeholder="123">
                        </div>
                        <div class="col-md-12 form-group">
                            <label>Additional Description or Note</label>
                            <textarea class="form-control" rows="3" placeholder="Enter any additional notes here" name="additional-details"></textarea>
                        </div>
                        <!-- <div class="col-md-12 form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="newaccount">
                                <label class="custom-control-label" for="newaccount">Create an account</label>
                            </div>
                        </div>
                         <div class="col-md-12 form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="shipto">
                                <label class="custom-control-label" for="shipto" data-toggle="collapse" data-target="#shipping-address">Ship to different address</label>
                            </div>
                        </div> -->
                    </div>
                </div>
                <div class="collapse mb-4" id="shipping-address">
                    <h4 class="font-weight-semi-bold mb-4">Shipping Address</h4>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>First Name</label>
                            <input class="form-control" type="text" placeholder="John">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Last Name</label>
                            <input class="form-control" type="text" placeholder="Doe">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>E-mail</label>
                            <input class="form-control" type="text" placeholder="example@email.com">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Mobile No</label>
                            <input class="form-control" type="text" placeholder="+123 456 789">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Address Line 1</label>
                            <input class="form-control" type="text" placeholder="123 Street">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Address Line 2</label>
                            <input class="form-control" type="text" placeholder="123 Street">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Country</label>
                            <select class="custom-select">
                                <option selected>United States</option>
                                <option>Afghanistan</option>
                                <option>Albania</option>
                                <option>Algeria</option>
                            </select>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>City</label>
                            <input class="form-control" type="text" placeholder="New York">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>State</label>
                            <input class="form-control" type="text" placeholder="New York">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>ZIP Code</label>
                            <input class="form-control" type="text" placeholder="123">
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
                    <!-- <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Payment</h4>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment" id="paypal">
                                <label class="custom-control-label" for="paypal">Paypal</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment" id="directcheck">
                                <label class="custom-control-label" for="directcheck">Direct Check</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment" id="banktransfer">
                                <label class="custom-control-label" for="banktransfer">Bank Transfer</label>
                            </div>
                        </div>
                    </div> -->
                    <div class="card-footer border-secondary bg-transparent">
                        <button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3" onclick="placeOrder()">Place Order</button>
                    </div>
                </div>
            </div>
        </div>
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
            //let shippingFee = document.getElementById('shipping-fee');
            const shippingFeeInput = document.getElementById('shipping-fee');
            const shippingFee = parseFloat(shippingFeeInput.value) || 0;

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

            let subtotal = cart.reduce((sum, product) => sum + (product.price * product.quantity), 0);
            document.getElementById('checkout-subtotal').textContent = `$${subtotal.toFixed(2)}`;
            document.getElementById('checkout-total').textContent = `$${(subtotal).toFixed(2)}`; // Assuming $10 shipping
        });

        function placeOrder() {
            // Code to handle placing the order, e.g., sending data to the server
            localStorage.removeItem('cart');
            alert('Order placed successfully!');
        }
    </script>
</body>
</html>
