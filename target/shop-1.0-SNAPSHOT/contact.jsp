<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Daily Shop | Contact</title>

    <!-- Font awesome -->
    <link href="<c:url value="/templatesecond/css/font-awesome.css" />" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<c:url value="/templatesecond/css/bootstrap.css" />" rel="stylesheet">

    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="<c:url value="/templatesecond/css/jquery.smartmenus.bootstrap.css" />" rel="stylesheet">

    <!-- Product view slider -->
    <link href="<c:url value="/templatesecond/css/jquery.simpleLens.css" />" rel="stylesheet" type="text/css">

    <!-- slick slider -->
    <link href="<c:url value="/templatesecond/css/slick.css" />" rel="stylesheet" type="text/css">

    <!-- price picker slider -->
    <link href="<c:url value="/templatesecond/css/nouislider.css" />" rel="stylesheet" type="text/css">

    <!-- Theme color -->
    <link id="switcher" href="<c:url value="/templatesecond/css/theme-color/default-theme.css" />" rel="stylesheet" >

    <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="<c:url value="/templatesecond/css/sequence-theme.modern-slide-in.css" />" rel="stylesheet"  media="all">

    <!-- Main style sheet -->
    <link href="<c:url value="/templatesecond/css/style.css" />" rel="stylesheet">
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<!-- wpf loader Two -->
<div id="wpf-loader-two">
    <div class="wpf-loader-two-inner">
        <span>Loading</span>
    </div>
</div>
<!-- / wpf loader Two -->
<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
<!-- END SCROLL TOP BUTTON -->


<!-- Start header section -->
<header id="aa-header">
    <!-- start header top  -->
    <div class="aa-header-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-top-area">
                        <!-- start header top left -->
                        <div class="aa-header-top-left">
                            <!-- start language -->
                            <div class="aa-language">
                                <div class="dropdown">
                                    <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        <img src="<c:url value="/templatesecond/img/flag/english.jpg"/>" alt="english flag">ENGLISH
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                        <li><a href="#"><img src="<c:url value="/templatesecond/img/flag/french.jpg"/>" alt="">FRENCH</a></li>
                                        <li><a href="#"><img src="<c:url value="/templatesecond/img/flag/english.jpg"/>" alt="">ENGLISH</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- / language -->

                            <!-- start currency -->
                            <div class="aa-currency">
                                <div class="dropdown">
                                    <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                        <i class="fa fa-usd"></i>USD
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                        <li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
                                        <li><a href="#"><i class="fa fa-jpy"></i>YEN</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- / currency -->
                            <!-- start cellphone -->
                            <div class="cellphone hidden-xs">
                                <p><span class="fa fa-phone"></span>00-62-658-658</p>
                            </div>
                            <!-- / cellphone -->
                        </div>
                        <!-- / header top left -->
                        <div class="aa-header-top-right">
                            <ul class="aa-head-top-nav-right">
                                <li><a href="/login">My Account</a></li>
                                <li><a href="" data-toggle="modal" data-target="#login-modal">Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header top  -->

    <!-- start header bottom  -->
    <div class="aa-header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-header-bottom-area">
                        <!-- logo  -->
                        <div class="aa-logo">
                            <!-- Text based logo -->
                            <a href="/index">
                                <span class="fa fa-shopping-cart"></span>
                                <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                            </a>
                            <!-- img based logo -->
                            <!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
                        </div>
                        <!-- / logo  -->
                        <!-- cart box -->
                        <div class="aa-cartbox">
                            <div class="aa-cartbox-summary">
                                <ul>
                                    <li>
                                        <a class="aa-cartbox-img" href="#"><img src="<c:url value="/templatesecond/img/woman-small-2.jpg"/>" alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="#">Product Name</a></h4>
                                            <p>1 x $250</p>
                                        </div>
                                        <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                                        <a class="aa-cartbox-img" href="#"><img src="<c:url value="/templatesecond/img/woman-small-1.jpg"/>" alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="#">Product Name</a></h4>
                                            <p>1 x $250</p>
                                        </div>
                                        <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                    </li>
                                    <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                                        <span class="aa-cartbox-total-price">
                        $500
                      </span>
                                    </li>
                                </ul>
                                <a class="aa-cartbox-checkout aa-primary-btn" href="checkout.html">Checkout</a>
                            </div>
                        </div>
                        <!-- / cart box -->
                        <!-- search box -->
                        <div class="aa-search-box">
                            <form>
                                <input type="text" name="search" id="" placeholder="Search here ex. 'man' ">
                                <button type="submit" href="/search?chucNang=search"><span class="fa fa-search" ></span></button>
                            </form>
                        </div>
                        <!-- / search box -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / header bottom  -->
</header>
<!-- / header section -->
<!-- menu -->
<section id="menu">
    <div class="container">
        <div class="menu-area">
            <!-- Navbar -->
            <div class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <!-- Left nav -->
                    <ul class="nav navbar-nav">
                        <li><a href="/index">Home</a></li>
                        <li><a href="#">Men <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Casual</a></li>
                                <li><a href="#">Sports</a></li>
                                <li><a href="#">Formal</a></li>
                                <li><a href="#">Standard</a></li>
                                <li><a href="#">T-Shirts</a></li>
                                <li><a href="#">Shirts</a></li>
                                <li><a href="#">Jeans</a></li>
                                <li><a href="#">Trousers</a></li>
                                <li><a href="#">And more.. <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Sleep Wear</a></li>
                                        <li><a href="#">Sandals</a></li>
                                        <li><a href="#">Loafers</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Women <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Kurta & Kurti</a></li>
                                <li><a href="#">Trousers</a></li>
                                <li><a href="#">Casual</a></li>
                                <li><a href="#">Sports</a></li>
                                <li><a href="#">Formal</a></li>
                                <li><a href="#">Sarees</a></li>
                                <li><a href="#">Shoes</a></li>
                                <li><a href="#">And more.. <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Sleep Wear</a></li>
                                        <li><a href="#">Sandals</a></li>
                                        <li><a href="#">Loafers</a></li>
                                        <li><a href="#">And more.. <span class="caret"></span></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Rings</a></li>
                                                <li><a href="#">Earrings</a></li>
                                                <li><a href="#">Jewellery Sets</a></li>
                                                <li><a href="#">Lockets</a></li>
                                                <li class="disabled"><a class="disabled" href="#">Disabled item</a></li>
                                                <li><a href="#">Jeans</a></li>
                                                <li><a href="#">Polo T-Shirts</a></li>
                                                <li><a href="#">SKirts</a></li>
                                                <li><a href="#">Jackets</a></li>
                                                <li><a href="#">Tops</a></li>
                                                <li><a href="#">Make Up</a></li>
                                                <li><a href="#">Hair Care</a></li>
                                                <li><a href="#">Perfumes</a></li>
                                                <li><a href="#">Skin Care</a></li>
                                                <li><a href="#">Hand Bags</a></li>
                                                <li><a href="#">Single Bags</a></li>
                                                <li><a href="#">Travel Bags</a></li>
                                                <li><a href="#">Wallets & Belts</a></li>
                                                <li><a href="#">Sunglases</a></li>
                                                <li><a href="#">Nail</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Kids <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Casual</a></li>
                                <li><a href="#">Sports</a></li>
                                <li><a href="#">Formal</a></li>
                                <li><a href="#">Standard</a></li>
                                <li><a href="#">T-Shirts</a></li>
                                <li><a href="#">Shirts</a></li>
                                <li><a href="#">Jeans</a></li>
                                <li><a href="#">Trousers</a></li>
                                <li><a href="#">And more.. <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Sleep Wear</a></li>
                                        <li><a href="#">Sandals</a></li>
                                        <li><a href="#">Loafers</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Sports</a></li>
                        <li><a href="#">Digital <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Camera</a></li>
                                <li><a href="#">Mobile</a></li>
                                <li><a href="#">Tablet</a></li>
                                <li><a href="#">Laptop</a></li>
                                <li><a href="#">Accesories</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.jsp">Blog</a>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="listproduct.jsp">Pages </a>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
</section>
<!-- / menu -->

<!-- catg header banner section -->
<section id="aa-catg-head-banner">
    <img src="<c:url value="/templatesecond/img/fashion/fashion-header-bg-8.jpg"/>" alt="fashion img">
    <div class="aa-catg-head-banner-area">
        <div class="container">
            <div class="aa-catg-head-banner-content">
                <h2>Contact</h2>
                <ol class="breadcrumb">
                    <li><a href="/index">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->
<!-- start contact section -->
<section id="aa-contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-contact-area">
                    <div class="aa-contact-top">
                        <h2>Vi To Quoc Xa Hoi Chu Nghia Vi Ly Tuong Cua Bac Ho Vi Dai</h2>
                        <p>San Sang</p>
                    </div>
                    <!-- contact map -->
                    <div class="aa-contact-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.4720895648375!2d105.73227131437874!3d21.053798892300183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313455af9072ccf9%3A0xadb5f7555c46683d!2zxJDhuqFpIEjhu41jIEPDtG5nIE5naGnhu4dwIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1582378127507!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                    <!-- Contact address -->
                    <div class="aa-contact-address">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="aa-contact-address-left">
                                    <form class="comments-form contact-form" action="/contact">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Your Name" class="form-control" name="yourName">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="email" placeholder="Email" class="form-control" name="email">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Subject" class="form-control" name="subject">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Company" class="form-control" name="company">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <textarea class="form-control" rows="3" placeholder="Message" name="message"></textarea>
                                        </div>
                                        <button class="aa-secondary-btn">Send</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="aa-contact-address-right">
                                    <address>
                                        <h4>DailyShop</h4>
                                        <p>Let's live as beautiful as the swans of tchaikovsky</p>
                                        <p><span class="fa fa-home"></span>No. 298 Cau Dien Street, Bac Tu Liem District, Hanoi</p>
                                        <p><span class="fa fa-phone"></span>+84 243 765 5121</p>
                                        <p><span class="fa fa-envelope"></span>Email: dhcnhn@haui.edu.vn</p>
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Subscribe section -->
<section id="aa-subscribe">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-subscribe-area">
                    <h3>Subscribe our newsletter </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, velit!</p>
                    <form action="" class="aa-subscribe-form">
                        <input type="email" name="" id="" placeholder="Enter your Email">
                        <input type="submit" value="Subscribe">
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Subscribe section -->

<!-- footer -->
<footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-footer-top-area">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <h3>Main Menu</h3>
                                    <ul class="aa-footer-nav">
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">Our Services</a></li>
                                        <li><a href="#">Our Products</a></li>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <div class="aa-footer-widget">
                                        <h3>Knowledge Base</h3>
                                        <ul class="aa-footer-nav">
                                            <li><a href="#">Delivery</a></li>
                                            <li><a href="#">Returns</a></li>
                                            <li><a href="#">Services</a></li>
                                            <li><a href="#">Discount</a></li>
                                            <li><a href="#">Special Offer</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <div class="aa-footer-widget">
                                        <h3>Useful Links</h3>
                                        <ul class="aa-footer-nav">
                                            <li><a href="#">Site Map</a></li>
                                            <li><a href="#">Search</a></li>
                                            <li><a href="#">Advanced Search</a></li>
                                            <li><a href="#">Suppliers</a></li>
                                            <li><a href="#">FAQ</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6">
                                <div class="aa-footer-widget">
                                    <div class="aa-footer-widget">
                                        <h3>Contact Us</h3>
                                        <address>
                                            <p> 25 Astor Pl, NY 10003, USA</p>
                                            <p><span class="fa fa-phone"></span>+1 212-982-4589</p>
                                            <p><span class="fa fa-envelope"></span>dailyshop@gmail.com</p>
                                        </address>
                                        <div class="aa-footer-social">
                                            <a href="#"><span class="fa fa-facebook"></span></a>
                                            <a href="#"><span class="fa fa-twitter"></span></a>
                                            <a href="#"><span class="fa fa-google-plus"></span></a>
                                            <a href="#"><span class="fa fa-youtube"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="aa-footer-bottom-area">
                        <p>Designed by <a href="http://www.markups.io/">MarkUps.io</a></p>
                        <div class="aa-footer-payment">
                            <span class="fa fa-cc-mastercard"></span>
                            <span class="fa fa-cc-visa"></span>
                            <span class="fa fa-paypal"></span>
                            <span class="fa fa-cc-discover"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- / footer -->
<!-- Login Modal -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4>Login or Register</h4>
                <form class="aa-login-form" action="/login" method="post">
                    <label for="">Username or Email address<span>*</span></label>
                    <input type="text" placeholder="Username or email" name="userName">
                    <label for="">Password<span>*</span></label>
                    <input type="password" placeholder="Password" name="password">
                    <button class="aa-browse-btn" type="submit">Login</button>
                    <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                    <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
                    <div class="aa-register-now">
                        Don't have an account?<a href="/login">Register now!</a>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


<!-- jQuery library -->
<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"/>"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="<c:url value="/templatesecond/js/bootstrap.js"/>"></script>
<!-- SmartMenus jQuery plugin -->
<script type="text/javascript" src="<c:url value="/templatesecond/js/jquery.smartmenus.js"/>"></script>

<!-- SmartMenus jQuery Bootstrap Addon -->
<script type="text/javascript" src="<c:url value="/templatesecond/js/jquery.smartmenus.bootstrap.js"/>"></script>

<!-- To Slider JS -->
<script src="<c:url value="/templatesecond/js/sequence.js"/>"></script>

<script src="<c:url value="/templatesecond/js/sequence-theme.modern-slide-in.js"/>"></script>
<!-- Product view slider -->
<script type="text/javascript" src="<c:url value="/templatesecond/js/jquery.simpleGallery.js"/>"></script>

<script type="text/javascript" src="<c:url value="/templatesecond/js/jquery.simpleLens.js"/>"></script>
<!-- slick slider -->
<script type="text/javascript" src="<c:url value="/templatesecond/js/slick.js"/>"></script>

<!-- Price picker slider -->
<script type="text/javascript" src="<c:url value="/templatesecond/js/nouislider.js"/>"></script>
<!-- Custom js -->
<script src="<c:url value="/templatesecond/js/custom.js"/>"></script>

<script src="<c:url value="/templatesecond/css/bootstrap.css"/>"></script>


</body>
</html>