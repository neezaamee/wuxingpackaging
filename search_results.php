<?php
include_once "Functions.php";

// Define the number of products per page
$productsPerPage = 15;

// Get the current page number from the URL parameter
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;

// Calculate the offset for the SQL query
$offset = ($page - 1) * $productsPerPage;

// Get the search term from the URL parameter
$searchTerm = isset($_GET['query']) ? $_GET['query'] : '';

// Build the base URL for pagination links
$paginationBaseUrl = "search_results.php";
if ($searchTerm !== '') {
    $paginationBaseUrl .= "?search=" . urlencode($searchTerm);
}

// Escape the search term to prevent SQL injection
$searchTermEscaped = mysqli_real_escape_string($con, $searchTerm);

// Query to count total number of products matching the search term using full-text search
$countQuery = "SELECT COUNT(*) as total FROM products WHERE MATCH(name) AGAINST ('$searchTermEscaped' IN NATURAL LANGUAGE MODE)";
$countResult = mysqli_query($con, $countQuery);
$totalProducts = mysqli_fetch_assoc($countResult)['total'];

// Calculate total number of pages
$totalPages = ceil($totalProducts / $productsPerPage);

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Search Results | Wuxing Packaging</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Packaging materials, boxes, bags, and more | Wuxing Packaging" name="keywords">
    <meta content="Discover a wide range of high-quality packaging materials at Wuxing Packaging. From boxes to bags, we've got you covered!" name="description">
    <!-- Includes from static includes -->
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
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Search Results</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="/">Home</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Search</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Shop Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <!-- Shop Sidebar Start -->
            <!-- Shop Sidebar End -->

            <!-- Shop Product Start -->
            <div class="col-lg-12 col-md-12">
                <div class="row pb-3">
                    <div class="col-12 pb-1">
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <form action="search_results.php" method="GET">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for products" name="query" value="<?php echo htmlspecialchars($searchTerm); ?>">
                                    <div class="input-group-append">
                                        <button class="input-group-text bg-transparent text-primary" type="submit">
                                            <i class="fa fa-search"></i>
                                        </button>
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
                    // Modify your SQL query to limit the results and include the offset using full-text search
                    $Q = "SELECT * FROM products WHERE MATCH(name) AGAINST ('$searchTermEscaped' IN NATURAL LANGUAGE MODE) ORDER BY id DESC LIMIT $offset, $productsPerPage";
                    $QR = mysqli_query($con, $Q);
                    $NR = mysqli_num_rows($QR);
                    if ($NR > 0) {
                        while ($Row = mysqli_fetch_assoc($QR)) {

                            $productID = $Row["id"];
                            $Q2 = "SELECT * FROM images WHERE idproduct='$productID'";
                            $QR2 = mysqli_query($con, $Q2);
                            $NR2 = mysqli_num_rows($QR2);
                            if ($NR2 > 0) {
                                $Row2 = mysqli_fetch_assoc($QR2);
                            } else {
                                $Row2 = ['url' => 'path/to/default-image.jpg', 'alttext' => 'Default Image']; // Placeholder for missing images
                            }
                            ?>
                            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                                <div class="card product-item border-0 mb-4">
                                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                        <img class="img-fluid w-100" src="<?php echo $Row2["url"]; ?>" alt="<?php echo $Row2['alttext']; ?>">
                                    </div>
                                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                        <h6 class="mb-3"><?php echo $Row["name"]; ?></h6>
                                        <div class="d-flex justify-content-center">
                                            <h6><?php echo $Row["discountedprice"]; ?></h6>
                                            <h6 class="text-muted ml-2"><del><?php echo $Row["saleprice"]; ?></del></h6>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex justify-content-between bg-light border">
                                        <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                        <button class="btn btn-sm text-dark p-0" onclick="addToCart(this)" data-id="<?php echo $Row['id']; ?>" data-name="<?php echo $Row['name']; ?>" data-price="<?php echo $Row['discountedprice']; ?>">
                                            <i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart
                                        </button>                                        
                                    </div>
                                </div>
                            </div>
                            <?php
                        }
                    } else {
                        echo "<div class='col-12'><p>No products found matching your search criteria.</p></div>";
                    }
                    ?>
                    <!-- Pagination -->
                    <div class="col-12 pb-1">
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-center mb-3">
                                <?php
                                // Show Pagination if pages are more than 1
                                if ($totalPages > 1) {
                                    $Previous = $page - 1;
                                    echo "<li class='page-item " . ($Previous == 0 ? 'disabled' : '') . "'><a class='page-link' href='$paginationBaseUrl&page=$Previous' aria-label='Previous'><span aria-hidden='true'>&laquo;</span><span class='sr-only'>Previous</span></a></li>";

                                    for ($i = 1; $i <= $totalPages; $i++) {
                                        echo "<li class='page-item " . ($i == $page ? 'active' : '') . "'><a class='page-link' href='$paginationBaseUrl&page=$i'>$i</a></li>";
                                    }
                                    
                                    $Next = $page + 1;
                                    echo "<li class='page-item " . ($page == $totalPages ? 'disabled' : '') . "'><a class='page-link' href='$paginationBaseUrl&page=$Next' aria-label='Next'><span aria-hidden='true'>&raquo;</span><span class='sr-only'>Next</span></a></li>";
                                } else {
                                    if ($totalProducts > 0) {
                                        echo "<li class='page-item active'><a class='page-link' href='$paginationBaseUrl&page=$page'>$page</a></li>";
                                    }
                                }
                                ?>
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

    <!-- Footer JS Includes -->
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
                item.quantity++;
            } else {
                cart.push({ id, name, price, quantity: 1 });
            }

            localStorage.setItem('cart', JSON.stringify(cart));
            alert("Product added to cart");
        }
    </script>
</body>

</html>
