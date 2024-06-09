<?php
include_once "Functions.php";

// Define the number of products per page
$productsPerPage = 15;

// Get the current page number from the URL parameter
$page = isset($_GET['page']) ? $_GET['page'] : 1;

// Calculate the offset for the SQL query
$offset = ($page - 1) * $productsPerPage;

// Get the category ID from the URL parameter
if (isset($_GET["category"])) {
    $categoryID = $_GET["category"];
    $categoryName = subCategoryByID($categoryID)->name;
} else {
    $categoryID = null;
    $categoryName = "Shop";
}

// Build the base URL for pagination links
$paginationBaseUrl = "shop.php";
if ($categoryID !== null) {
    $paginationBaseUrl .= "?category=$categoryID";
}

// Query to count total number of products
$countQuery = "SELECT * FROM products";
if ($categoryID !== null) {
    $countQuery .= " WHERE idcategory= $categoryID OR idsubcategory = $categoryID";
}
$countResult = mysqli_query($con, $countQuery);
//$countRow = mysqli_fetch_assoc($countResult);
$totalProducts = mysqli_num_rows($countResult);

// Calculate total number of pages
$totalPages = ceil($totalProducts / $productsPerPage);

?>
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
    <!--includes from static includes-->
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
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 150px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Wuxing Packaging Store</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="/">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0"><?php echo $categoryName; ?></p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
             <?php 
             /* 
             <div class="col-lg-3 col-md-12">
                <!-- Price Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Filter by price</h5>
                    <form>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-all">
                            <label class="custom-control-label" for="price-all">All Price</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-1">
                            <label class="custom-control-label" for="price-1">$0 - $100</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-2">
                            <label class="custom-control-label" for="price-2">$100 - $200</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-3">
                            <label class="custom-control-label" for="price-3">$200 - $300</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="price-4">
                            <label class="custom-control-label" for="price-4">$300 - $400</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="price-5">
                            <label class="custom-control-label" for="price-5">$400 - $500</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Price End -->

                <!-- Color Start -->
                <div class="border-bottom mb-4 pb-4">
                    <h5 class="font-weight-semi-bold mb-4">Filter by color</h5>
                    <form>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="color-all">
                            <label class="custom-control-label" for="price-all">All Color</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-1">
                            <label class="custom-control-label" for="color-1">Black</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-2">
                            <label class="custom-control-label" for="color-2">White</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-3">
                            <label class="custom-control-label" for="color-3">Red</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="color-4">
                            <label class="custom-control-label" for="color-4">Blue</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="color-5">
                            <label class="custom-control-label" for="color-5">Green</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Color End -->

                <!-- Size Start -->
                <div class="mb-5">
                    <h5 class="font-weight-semi-bold mb-4">Filter by size</h5>
                    <form>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="size-all">
                            <label class="custom-control-label" for="size-all">All Size</label>
                            <span class="badge border font-weight-normal">1000</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-1">
                            <label class="custom-control-label" for="size-1">XS</label>
                            <span class="badge border font-weight-normal">150</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-2">
                            <label class="custom-control-label" for="size-2">S</label>
                            <span class="badge border font-weight-normal">295</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-3">
                            <label class="custom-control-label" for="size-3">M</label>
                            <span class="badge border font-weight-normal">246</span>
                        </div>
                        <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" id="size-4">
                            <label class="custom-control-label" for="size-4">L</label>
                            <span class="badge border font-weight-normal">145</span>
                        </div>
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between">
                            <input type="checkbox" class="custom-control-input" id="size-5">
                            <label class="custom-control-label" for="size-5">XL</label>
                            <span class="badge border font-weight-normal">168</span>
                        </div>
                    </form>
                </div>
                <!-- Size End -->
            </div>
             */
             ?>
            
            <!-- Shop Sidebar End -->


            <!-- Shop Product Start -->
            <div class="col-lg-12 col-md-12">
                <div class="row pb-3">
                    <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search by name">
                                    <div class="input-group-append">
                                        <span class="input-group-text bg-transparent text-primary">
                                            <i class="fa fa-search"></i>
                                        </span>
                                    </div>
                                </div>
                            </form>
                            <div class="dropdown ml-4">
                                <button class="btn border dropdown-toggle" type="button" id="triggerId"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Sort by
                                </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                    <a class="dropdown-item" href="#">Latest</a>
                                    <a class="dropdown-item" href="#">Popularity</a>
                                    <a class="dropdown-item" href="#">Best Rating</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <?php
                    // Modify your SQL query to limit the results and include the offset
                    $Q = "SELECT * FROM products";
                    if (isset($categoryID)) {
                        $Q .= " where idcategory='$categoryID' OR idsubcategory='$categoryID'";
                    }
                    $Q .= " ORDER BY id DESC LIMIT $offset, $productsPerPage";
                    $QR = mysqli_query($con, $Q);
                    $NR = mysqli_num_rows($QR);
                    if ($NR > 0) {
                        while ($Row = mysqli_fetch_assoc($QR)) {

                            $productID = $Row["id"];
                            $Q2 = "SELECT * FROM images where idproduct='$productID'";
                            $QR2 = mysqli_query($con, $Q2);
                            $NR2 = mysqli_num_rows($QR2);
                            if ($NR2 > 0) {
                                $Row2 = mysqli_fetch_assoc($QR2);
                            } else {
                                $NR = 0;
                            }
                            ?>
                            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                                <div class="card product-item border-0 mb-4">
                                    <div
                                        class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                        <img class="img-fluid w-100" src="<?php echo $Row2[
                                            "url"
                                        ]; ?>" alt="<?php echo $Row2['alttext']; ?>">
                                    </div>
                                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                        <h6 class="mb-3"><?php echo $Row[
                                            "name"
                                        ]; ?></h6>
                                        <div class="d-flex justify-content-center">
                                            <h6><?php echo $Row["discountedprice"]; ?></h6>
                                            <h6 class="text-muted ml-2">
                                                <del><?php echo $Row[
                                                    "saleprice"
                                                ]; ?></del>
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex justify-content-between bg-light border">
                                        <a href="" class="btn btn-sm text-dark p-0"><i
                                                class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                        <button class="btn btn-sm text-dark p-0" onclick="addToCart(this)"
                                            data-id="<?php echo $Row['id']; ?>" data-name="<?php echo $Row['name']; ?>"
                                            data-price="<?php echo $Row['discountedprice']; ?>">
                                            <i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart
                                        </button>                                        
                                    </div>
                                </div>
                            </div>
                            <?php
                        }
                    } else {
                        echo "Come back again, we are bringing more products";
                    }
                    ?>
                    <!--Pagination-->
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center mb-3">
                                <!--<li class="page-item disabled">
                              <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                              </a>
                            </li>-->
                                <?php
                                // Calculate total number of pages
                                //show Pagination if pages are more than 1
                                $totalPages = ceil($totalProducts / $productsPerPage);

                                if ($totalPages > 1) {
                                    $Previous = $page - 1;
                                        if(isset($categoryID)){
                                            echo "<li class='page-item " . ($Previous == 0 ? 'disabled' : '') . "'><a class='page-link' href='?category=$categoryID&page=$Previous' aria-label='Previous'><span aria-hidden='true'>&laquo;</span><span class='sr-only'>Previous</span></a></li>";                                            
                                            }else{
                                                echo "<li class='page-item " . ($Previous == 0 ? 'disabled' : '') . "'><a class='page-link' href='?page=$Previous' aria-label='Previous'><span aria-hidden='true'>&laquo;</span><span class='sr-only'>Previous</span></a></li>";
                                        }

                                    // Render pagination links
                                    if(isset($categoryID)){
                                        for ($i = 1; $i <= $totalPages; $i++) {
                                            echo "<li class='page-item " . ($i == $page ? 'active' : '') . "'><a class='page-link' href='?category=$categoryID&page=$i'>$i</a></li>";
                                        }
                                    }else{
                                        for ($i = 1; $i <= $totalPages; $i++) {
                                            echo "<li class='page-item " . ($i == $page ? 'active' : '') . "'><a class='page-link' href='?page=$i'>$i</a></li>";
                                        }
                                    }
                                    
                                    $Next = $page + 1;
                                    if(isset($categoryID)){
                                        echo "<li class='page-item " . ($page == $totalPages ? 'disabled' : '') . "'><a class='page-link' href='?category=$categoryID&page=$Next' aria-label='Next'><span aria-hidden='true'>&raquo;</span><span class='sr-only'>Next</span></a></li>";
                                        }
                                        else{
                                        echo "<li class='page-item " . ($page == $totalPages ? 'disabled' : '') . "'><a class='page-link' href='?page=$Next' aria-label='Next'><span aria-hidden='true'>&raquo;</span><span class='sr-only'>Next</span></a></li>";

                                    }

                                } else {
                                    if ($totalProducts > 0) {
                                        echo "<li class='page-item active'><a class='page-link' href='?category=$categoryID&page=$page'>$page</a></li>";
                                    }

                                }

                                ?>
                                <!--<li class="page-item">
                                    
                              <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                              </a>
                            </li>-->
                                <!--
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                              <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                              </a>
                            </li>-->
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- Shop Product End -->
        </div>
    </div>
    <!-- Shop End -->


    <!-- Footer Start + Back to Top -->
    <?php include "layout/Footer.php"; ?>
    <!-- Footer End -->

    <!--Footer JS Includes-->
    <?php include "layout/footerJsIncludes.php"; ?>
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
                cart.push({ id, name, price, quantity: 1 });
            }

            localStorage.setItem('cart', JSON.stringify(cart));
            alert(name + ' has been added to your cart');
        }
    </script>
</body>

</html>