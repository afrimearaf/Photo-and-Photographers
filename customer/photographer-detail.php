<?php session_start(); ?>
<?php $connection= mysqli_connect('localhost', 'root', '', 'photography'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photograph-Y</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">

</head>

<body>
    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php">
                <i class="fas fa-film mr-2"></i>
                Photograph-Y
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link nav-link-1 " aria-current="page" href="index.php">Photos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-2 active" href="photographer.php">Photographers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link nav-link-4" href="contact.php">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="img/hero.jpg">
        <h1 class="tm-text-primary mb-4">Home / <span class="tm-text-secondary">Photographers</span></h1>
    </div>

    <div class="container-fluid tm-container-content tm-mt-60">
        <?php 
        
        if(isset($_GET['p_id'])){
            $the_seller_id=$_GET['p_id'];
        }

        $sql="SELECT * FROM sellers WHERE seller_id='$the_seller_id'";
        $get_seller = mysqli_query($connection, $sql); 


        if(!$get_seller){

            die("Query Failed". mysqli_error($connection));

        }

        while($row=mysqli_fetch_assoc($get_seller)){


            $seller_id =$row['seller_id'];
            $user_id=$row['user_id'];
            $fullname=$row['fullname'];
            $details=$row['details'];
            $category=$row['category'];
            $experiance=$row['experiance'];
            $image=$row['image'];
            $icode=$row['icode'];


        } 
        ?>
        <div class="row mb-4">
            <h2 class="col-12 tm-text-primary"><?php echo $fullname; ?></h2>
        </div>
        <div class="row tm-mb-90">
            <div class="col-xl-8 col-lg-7 col-md-6 col-sm-12">
                <img src="../images/<?php echo"$image"; ?>" alt="Image" class="img-fluid">
            </div>
            <div class="col-xl-4 col-lg-5 col-md-6 col-sm-12">
                <div class="tm-bg-gray tm-video-details">
                    <p class="mb-4">
                        <?php echo"$details"; ?>
                    </p>
                    <div class="mb-4 d-flex flex-wrap">
                       <div class="mr-4 mb-2">
                            <span class="tm-text-gray-dark">Category: </span><span class="tm-text-primary"><?php echo"$category"; ?> years</span>
                        </div>
                        <div class="mr-4 mb-2">
                            <span class="tm-text-gray-dark">Experiance: </span><span class="tm-text-primary"><?php echo"$experiance"; ?> years</span>
                        </div>
                    </div>
                    <div>
                        <form id="contact-form" action="manage_cart.php" method="POST" class="tm-contact-form">
                            <h4 class="tm-text-gray-dark mb-3">Select Packages</h4>
                            
                            <div class="form-group">
                                <select class="form-control" id="contact-select" name="price">
                                    <option value="-">Packages</option>
                                    <option value="5000">1 Day Basic Package (5000)</option>
                                    <option value="8000">2 Day Medium Package (8000)</option>
                                    <option value="10000">3 Day Ultimate Package (10000)</option>
                                </select>
                            </div>
                            
                            <h4 class="tm-text-gray-dark mb-3">Select Time</h4>
                            <div class="form-group">
                                 <input class="form-control" type="date" name="date" > 
                            </div>
                            
                            <input type="hidden" name="item_name" value="<?php echo $fullname; ?>">
                            <input type="hidden" name="icode" value="<?php echo $icode; ?>"> 
                            <input type="hidden" name="image" value="<?php echo $image; ?>">
                            <input type="hidden" name="item_cat" value="Photographer"> 

                            <div class="form-group tm-text-right">
                                <button type="submit" name="hire" class="btn btn-primary tm-btn-big">Hire</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
        <div class="container-fluid tm-container-small">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">About Photograph-Y</h3>
                    <p>Where picture enthusiasts will snap their preferred images. And it's simple to locate
                        photographers at home using this website. Hiring photographers for special occasions is not a
                        cause for concern. The most creative or expert photography contest entries are available here.
                    </p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">Our Links</h3>
                    <ul class="tm-footer-links pl-0">
                        <li><a href="invoice.php">Order</a></li>
                        <li><a href="cart.php">Cart</a></li>
                        <li><a href="contact.php">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <ul class="tm-social-links d-flex justify-content-end pl-0 mb-5">
                        <li class="mb-2"><a href="https://facebook.com"><i class="fab fa-facebook"></i></a></li>
                        <li class="mb-2"><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li class="mb-2"><a href="https://instagram.com"><i class="fab fa-instagram"></i></a></li>
                        <li class="mb-2"><a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                    <a href="../includes/logout.php" class="tm-text-gray text-right d-block mb-2">Log Out</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    Copyright 2022 Photograph-Y Company. All rights reserved.
                </div>
            </div>
        </div>
    </footer>

    <script src="js/plugins.js"></script>
    <script>
        $(window).on("load", function () {
            $('body').addClass('loaded');
        });
    </script>
</body>

</html>
