<div class="container-fluid pt-5" id='trendy-collection'>
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Trendy Products</span></h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <?php
        $Q =
            "SELECT * FROM products WHERE istrending = 1 ORDER BY RAND()";
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
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="card product-item border-0 mb-4">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <a href="detail.php?product=<?php echo $productID; ?>" class="cat-img position-relative overflow-hidden mb-3">
                                <img class="img-fluid w-100" src="<?php echo $Row2["url"]; ?>" alt="<?php echo $Row["name"]; ?>">
                            </a>
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3"><?php echo ucwords($Row['name']); ?></h6>
                            <div class="d-flex justify-content-center">
                                <h6><?php echo $Row["saleprice"]; ?></h6>
                                <h6 class="text-muted ml-2"><del><?php echo $Row["saleprice"]; ?></del></h6>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="detail.php?prodoct=<?php echo $productID; ?>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                            <button class="btn btn-sm text-dark p-0" onclick="addToCart(this)" data-id="<?php echo $Row['id']; ?>" data-name="<?php echo $Row['name']; ?>" data-price="<?php echo $Row['discountedprice']; ?>"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</button>
                        </div>
                    </div>
                </div>
        <?php
            }
        } else {
            echo "Come back again, we are bringing more products.";
        }
        ?>
    </div>
</div>