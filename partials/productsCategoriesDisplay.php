<div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <?php
            $Q = "SELECT * FROM subcategory where idcategory=1 AND id > 1";
            $QR = mysqli_query($con, $Q);
            $NR = mysqli_num_rows($QR);

            if ($NR > 0) {
                while ($Row = mysqli_fetch_assoc($QR)) {

                    $subCategoryID = $Row["id"];
                    $Q1 = "SELECT * FROM products where idcategory='$subCategoryID'";
                    $QR1 = mysqli_query($con, $Q1);
                    $NR1 = mysqli_num_rows($QR1);
                    ?>
                            <div class="col-lg-3 col-md-4 pb-1 text-center">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;">
                    <p class="text-right"><?php echo $NR1; ?> Products</p>
                    <a href="shop.php?category=<?php echo $subCategoryID; ?>" class="cat-img position-relative overflow-hidden mb-3">
                    <?php
                    $Q2 = "SELECT url FROM images where idsubcategory='$subCategoryID'";
                    $QR2 = mysqli_query($con, $Q2);
                    //$NR1 = mysqli_num_rows($QR1);
                    $Row2 = mysqli_fetch_assoc($QR2);
                    ?>    
                        <img class="img-fluid" src="<?php echo $Row2['url'];?>" alt="">
                    </a>
                    <h6 class="font-weight-semi-bold m-0"><?php echo $Row[
                        "name"
                    ]; ?></h6>
                </div>
            </div>
                            <?php
                }
            } else {
                echo "no category found";
            }
            ?>
            
        </div>
    </div>