<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <title>Wuxing Packaging | Your Trusted Packaging Material Supplier</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Packaging materials, boxes, bags, and more | Wuxing Packaging" name="keywords">
    <meta content="Discover a wide range of high-quality packaging materials at Wuxing Packaging. From boxes to bags, we've got you covered!" name="description">
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

    <!-- Featured Start -->
    <?php include "partials/Featured.php"; ?>
    <!-- Featured End -->

    <!-- Categories Start -->
    <?php include "partials/productsCategoriesDisplay.php"; ?>
    <!-- Categories End -->

    <!-- Offer Start -->
    <?php include "partials/Offers.php"; ?>
    <!-- Offer End -->

    <!-- Trendy Products Start -->
    <?php include "partials/trendyProducts.php"; ?>
    <!-- Trendy Products End -->

    <!-- Just Arrived Products Start -->
    <?php include "partials/justArrivedProducts.php"; ?>
    <!-- Just Arrived Products End -->

    <!-- Subscribe Start -->
    <?php include "partials/Subscribe.php"; ?>
    <!-- Subscribe End -->

    <!-- Vendor Start -->
    <?php include "partials/Vendors.php"; ?>
    <!-- Vendor End -->

    <!-- Footer Start + Back to Top -->
    <?php include "layout/Footer.php"; ?>
    <!-- Footer End -->

    <!--Footer JS Includes-->
    <?php include "layout/footerJsIncludes.php"; ?>

    <!-- Add To Cart JS -->
    <script>
        function addToCart(button) {
            var product = button;
            var id = product.getAttribute('data-id');
            var name = product.getAttribute('data-name');
            var price = parseFloat(product.getAttribute('data-price'));

            var cart = JSON.parse(localStorage.getItem('cart')) || [];
            var item = cart.find(item => item.id == id);

            if (item) {
                item.quantity += 1;
            } else {
                cart.push({
                    id,
                    name,
                    price,
                    quantity: 1
                });
            }

            localStorage.setItem('cart', JSON.stringify(cart));
            alert(name + ' has been added to your cart');
        }
    </script>
</body>

</html>