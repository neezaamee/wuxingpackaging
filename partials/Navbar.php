<div class="container-fluid">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Categories</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                    <div class="navbar-nav w-100" style="height: auto">
                       <?php
                       $Q = "SELECT * FROM subcategory where idcategory=1";
                       $QR = mysqli_query($con, $Q);
                       $NR = mysqli_num_rows($QR);
                       if ($NR > 0) {
                           while ($Row = mysqli_fetch_assoc($QR)) {
                               $subcategoryID = $Row["id"]; ?>
                            <div class="nav-item dropdown">
                            <a href="shop.php?category=<?php echo $subcategoryID; ?>" class="nav-link" data-toggle="dropdown">
                                <?php echo $Row[
                                    "name"
                                ]; ?> <i class="fa fa-angle-down float-right mt-1"></i></a>                           
                            <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                        
                            <?php
                            $Q = "SELECT * FROM subcategory where idsubcategory = '$subcategoryID'";
                            $QR1 = mysqli_query($con, $Q);
                            $NR1 = mysqli_num_rows($QR);
                            //$subCatID = $Row1['id'];
                            if ($NR1 > 0) {
                                while ($Row1 = mysqli_fetch_assoc($QR1)) { ?>
                                <a href="shop.php?category=<?php echo $Row1[
                                    "id"
                                ]; ?>" class="dropdown-item"><?php echo $Row1[
    "name"
]; ?></a>
                                    <?php }
                            }
                            ?>
                            </div>
                            </div>
                            <?php
                           }
                       } else {
                           echo "no category found";
                       }
                       ?>                       
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">Wuxing</span>Packaging</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="/" class="nav-item nav-link">Home</a>
                            <a href="shop.php" class="nav-item nav-link">Shop</a>
                            <!--<a href="detail.php" class="nav-item nav-link">Shop Detail</a>-->
                            <!--<div class="nav-item dropdown">-->
                            <!--    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>-->
                            <!--    <div class="dropdown-menu rounded-0 m-0">-->
                            <!--        <a href="cart.php" class="dropdown-item">Shopping Cart</a>-->
                            <!--        <a href="checkout.php" class="dropdown-item">Checkout</a>-->
                            <!--    </div>-->
                            <!--</div>-->
                            
                            <?php
                       $Q = "SELECT * FROM subcategory where idcategory=1 AND id > 1";
                       $QR = mysqli_query($con, $Q);
                       $NR = mysqli_num_rows($QR);
                       if ($NR > 0) {
                           while ($Row = mysqli_fetch_assoc($QR)) {
                               $subcategoryID = $Row["id"]; ?>
                            <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                <?php echo $Row[
                                    "name"
                                ]; ?></a>                           
                            <div class="dropdown-menu rounded-0 m-0">
                        
                            <?php
                            $Q = "SELECT * FROM subcategory where idsubcategory = '$subcategoryID'";
                            $QR1 = mysqli_query($con, $Q);
                            $NR1 = mysqli_num_rows($QR);
                            if ($NR1 > 0) {
                                while ($Row1 = mysqli_fetch_assoc($QR1)) { ?>
                                <a href="shop.php?category=<?php echo $Row1["id"]; ?>" class="dropdown-item"><?php echo $Row1[
    "name"
]; ?></a>
                                    <?php }
                            }
                            ?>
                            </div>
                            </div>
                            <?php
                           }
                       } else {
                           echo "no category found";
                       }
                       ?>
                       
                            <!--<div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="cart.php" class="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.php" class="dropdown-item">Checkout</a>
                                </div>
                            </div>-->
                            
                            
                            <a href="contact.php" class="nav-item nav-link active">Contact</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0">
                            <a href="" class="nav-item nav-link">Login</a>
                            <a href="" class="nav-item nav-link">Register</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>