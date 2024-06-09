<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Contact Us</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <!--inlcludes from static includes-->
    <?php include "layout/headStaticIncludes.php"; ?>
</head>

<body>
    <!-- Topbar Start -->
    <?php include "partials/topBar.php"; ?>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <?php include "partials/Navbar.php"; ?>
    <!-- Navbar End -->



    <!-- Page Header Start -->
    <?php $pageTitle = "Contact Us"; ?>
    <?php include "partials/pageHeader.php"; ?>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Your Name"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="email" placeholder="Your Email"
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="subject" placeholder="Subject"
                                required="required" data-validation-required-message="Please enter a subject" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <textarea class="form-control" rows="6" id="message" placeholder="Message"
                                required="required"
                                data-validation-required-message="Please enter your message"></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div>
                            <button class="btn btn-primary py-2 px-4" type="submit" id="sendMessageButton">Send
                                Message</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Get In Touch</h5>
                <p>Have questions, concerns, or feedback? We're here to help! Reach out to our dedicated support team
                    for assistance with orders, products, or any other inquiries. Whether you prefer email, phone, or
                    live chat, we're committed to providing prompt and friendly assistance to ensure your shopping
                    experience with us is nothing short of excellent. Get in touch today and let us assist you every
                    step of the way!</p>
                <div class="d-flex flex-column mb-3">
                    <h5 class="font-weight-semi-bold mb-3">Store 1</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Dragon Mart 1 Shop GBB10,
                        Dubai, UAE</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i><a
                            href="mailto:info@wuxingpackaging.com">info@wuxingpackaging.com</a></p>
                    <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i><a href="tel:0554094665">+971 554
                            0946 65</a></p>
                </div>
                <!-- <div class="d-flex flex-column">
                    <h5 class="font-weight-semi-bold mb-3">Store 2</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                </div> -->
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Footer Start + Back to Top -->
    <?php include "layout/Footer.php"; ?>
    <!-- Footer End -->


    <!--Footer JS Includes-->
    <?php include "layout/footerJsIncludes.php"; ?>
</body>

</html>