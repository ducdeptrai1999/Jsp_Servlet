<%@ page import="com.buiminhduc.util.MySqlConnectionUtil" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.buiminhduc.model.entity.UserEntity" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.buiminhduc.repository.dao.ThanhVienDAO" %>
<%@ page import="com.buiminhduc.model.respond.UserResponse" %>
<%@ page import="com.buiminhduc.repository.ContactRepository" %>
<%@ page import="com.buiminhduc.repository.impl.ContactRepositoryImpl" %>
<%@ page import="com.buiminhduc.model.entity.ContactEntity" %>
<%@ page import="java.util.List" %>
<%@ page import="com.buiminhduc.repository.OrderRepository" %>
<%@ page import="com.buiminhduc.repository.impl.OrderImpl" %>
<%@ page import="com.buiminhduc.model.entity.OrderEntity" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Daily Shop | Wishlist Page</title>
    <!-- Font awesome -->
    <link href="<c:url value="/templatesecond/css/font-awesome.css" />" rel="stylesheet">

    <!-- Bootstrap -->
    <link href="<c:url value="/templatesecond/css/bootstrap.css" />" rel="stylesheet">

    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="<c:url value="/templatesecond/css/jquery.smartmenus.bootstrap.css" />" rel="stylesheet">

    <!-- Product view slider -->
    <link type="text/css" href="<c:url value="/templatesecond/css/jquery.simpleLens.css" />" rel="stylesheet">

    <!-- slick slider -->
    <link href="<c:url value="/templatesecond/css/slick.css" />" rel="stylesheet" type="text/css">

    <!-- price picker slider -->
    <link href="<c:url value="/templatesecond/css/nouislider.css" />" rel="stylesheet" type="text/css">

    <!-- Theme color -->
    <link id="switcher" href="<c:url value="/templatesecond/css/theme-color/default-theme.css" />" rel="stylesheet">

    <!-- Top Slider CSS -->
    <link href="<c:url value="/templatesecond/css/sequence-theme.modern-slide-in.css" />" rel="stylesheet" media="all">

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
                                        <li><a href="#"><img src=" <c:url value="/templatesecond/img/flag/french.jpg"/>" alt="">FRENCH</a></li>
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
                                <li><a href="/changepass">Change Password</a></li>
                                <li class="hidden-xs"><a href="checkout.html"><%
                                    UserResponse userResponse = (UserResponse) session.getAttribute("USER");
                                    out.print(userResponse.getUserName());
                                %></a></li>
                                <li class="hidden-xs"><a href="/logout?action=logout">Log out</a></li>
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
                            <a href="/admin">
                                <span class="fa fa-shopping-cart"></span>
                                <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                            </a>
                            <!-- img based logo -->
                            <!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
                        </div>
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
                        <li><a href="/admin">Home</a></li>
                        <li><a href="/admin/managerProduct">Product</a></li>
                        <li><a href="/admin/managerOrder">Order</a></li>
                        <li><a href="/admin/ManagerCoupon">Coupon</a></li>
                        <li><a href="/admin/managerRevenue">Revenue</a></li>
                        <li><a href="/admin/managerContact">Contact</a></li>
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
                <h2>Wishlist Page</h2>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Wishlist</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->

<!-- Cart view section -->
<section id="cart-view">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="cart-view-area">
                    <div class="cart-view-table aa-wishlist-table">
                        <div class="" >
                            <%--                            <strong>Enter the username you want to search : </strong><jsp:include page="search.jsp"></jsp:include>--%>
                        </div>
                        <form action="/admin/managerOrder" method="post">
                            <div class="table-responsive">
                                <%
                                    MySqlConnectionUtil con = new MySqlConnectionUtil();
                                    ResultSet rs = con.chonDuLieuTuDTB("select * from DonHang");
                                %>
                                <table class="table">
<%--                                    Search--%>
                                    <thead>
<%--                                    //--%>
                                    <tr>
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Company</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Address</th>
                                        <th>Special Notes</th>
                                        <th>Modefied Date</th>
                                        <th>Tong Tien</th>
                                        <th>Payment Method</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <% while (rs.next()){ %>
                                    <tr>
                                        <td><%=rs.getInt(1)%></td>
                                        <td><%=rs.getString(2)%> <%=rs.getString(3)%></td>
                                        <td><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                        <td><%=rs.getString(6)%></td>
                                        <td><%=rs.getString(7)%></td>
                                        <td><%=rs.getString(13)%></td>
                                        <td><%=rs.getString(14)%></td>
                                        <td><%=rs.getString(15)%></td>
                                        <td><%=rs.getString(16)%></td>
                                    </tr>
                                    <%} %>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Cart view section -->


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
<script type="text/javascript">
</script>
<!-- / footer -->
<!-- Login Modal -->
<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4>Login or Register</h4>
                <form class="aa-login-form" action="">
                    <label for="">Username or Email address<span>*</span></label>
                    <input type="text" placeholder="Username or email">
                    <label for="">Password<span>*</span></label>
                    <input type="password" placeholder="Password">
                    <button class="aa-browse-btn" type="submit">Login</button>
                    <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                    <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
                    <div class="aa-register-now">
                        Don't have an account?<a href="account.html">Register now!</a>
                    </div>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>



<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value="/templatesecond/js/bootstrap.js"/>"></script>

<!-- SmartMenus jQuery plugin -->
<script src="<c:url value="/templatesecond/js/jquery.smartmenus.js"/>"></script>

<!-- SmartMenus jQuery Bootstrap Addon -->
<script src="<c:url value="/templatesecond/js/jquery.smartmenus.bootstrap.js"/>"></script>

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

</body>
</html>