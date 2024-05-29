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
                        $QR = mysqli_query($con,$Q);
                        $NR = mysqli_num_rows($QR);
                     if($NR>0)
                     {
                         
                         while($Row = mysqli_fetch_assoc($QR))
                         {
                            $subcategoryID = $Row['id'];
                            //echo $Row['name'];
                            ?>
                            <div class="nav-item dropdown">
                            <a href="shop.php?category=<?php echo $subcategoryID; ?>" class="nav-link" data-toggle="dropdown"><?php echo $Row['name']; ?> <i class="fa fa-angle-down float-right mt-1"></i></a>                           
                            <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                        
                            <?php 
                            $Q = "SELECT * FROM subcategory where idsubcategory = '$subcategoryID'";
                            $QR1 = mysqli_query($con,$Q);
                            $NR1 = mysqli_num_rows($QR);
                            $subCatID = $Row1['id'];
                            if($NR1>0){
                                while($Row1 = mysqli_fetch_assoc($QR1)){
                                    ?>
                                <a href="shop.php?category=<?php echo $Row1['id']; ?>" class="dropdown-item"><?php echo $Row1['name']; ?></a>
                                    <?php
                                }
                            }
                             
                            ?>
                            </div>
                            </div>
                            <?php 
                         }
                     }else{
                         echo "no category found";
                     }
                        ?>                       
                        <!--<div class="nav-item dropdown">
                            <a href="shop.php?category=Bags" class="nav-link" data-toggle="dropdown">Bags <i class="fa fa-angle-down float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                <a href="" class="dropdown-item">Plain Shopping Bags</a>
                            </div>
                        </div>-->
                        <!--<div class="nav-item dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown">Hangers <i class="fa fa-angle-down float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                <a href="" class="dropdown-item">Baby / Kids Hangers</a>
                                <a href="" class="dropdown-item">Velvet Hangers</a>
                                <a href="" class="dropdown-item">Metal Hangers</a>
                                <a href="" class="dropdown-item">Pants Hangers</a>
                                <a href="" class="dropdown-item">Wooden Hangers</a>
                                <a href="" class="dropdown-item">Plastic Hangers</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="shop.php?category=Packaging" class="nav-link" data-toggle="dropdown">Packaging <i class="fa fa-angle-down float-right mt-1"></i></a>
                            <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                <a href="shop.php?category=1" class="dropdown-item">Glass, Jar, Containers, Bottle</a>
                                <a href="" class="dropdown-item">Tissue / Shred Paper</a>
                                <a href="" class="dropdown-item">Gift Pouch</a>
                                <a href="" class="dropdown-item">Ribbons</a>
                                <a href="" class="dropdown-item">Wraping Paper / Rolls</a>
                                <a href="" class="dropdown-item">Mailers, Stickers</a>
                            </div>
                        </div>-->
                        <!--<a href="" class="nav-item nav-link">Shirts</a>-->
                        <!--<a href="" class="nav-item nav-link">Jeans</a>-->
                        <!--<a href="" class="nav-item nav-link">Swimwear</a>-->
                        <!--<a href="" class="nav-item nav-link">Sleepwear</a>-->
                        <!--<a href="" class="nav-item nav-link">Sportswear</a>-->
                        <!--<a href="" class="nav-item nav-link">Jumpsuits</a>-->
                        <!--<a href="" class="nav-item nav-link">Blazers</a>-->
                        <!--<a href="" class="nav-item nav-link">Jackets</a>-->
                        <!--<a href="" class="nav-item nav-link">Shoes</a>-->
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
                            <a href="detail.php" class="nav-item nav-link">Shop Detail</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="cart.php" class="dropdown-item">Shopping Cart</a>
                                    <a href="checkout.php" class="dropdown-item">Checkout</a>
                                </div>
                            </div>
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