<%@ page import="com.buiminhduc.util.MySqlConnectionUtil" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.buiminhduc.model.entity.SanPhamEntity" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.buiminhduc.repository.dao.SanPhamDAO" %>
<%@ page import="com.buiminhduc.model.respond.UserResponse" %>
<%@ page import="com.buiminhduc.service.session.SessionUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Daily Shop | Product</title>

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
<!-- !Important notice -->
<!-- Only for product page body tag have to added .productPage class -->
<body class="productPage">
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
                                <%UserResponse userResponse = (UserResponse) SessionUtil.getSession(request, "USER"); %>
                                <li><a href="" data-toggle="modal" data-target="#login-modal">Change Password</a></li>
                                <li class="hidden-xs"><a href="/wishlist.jsp">Wishlist</a></li>
                                <li class="hidden-xs"><a href="card.jsp">My Cart</a></li>
                                <li class="hidden-xs"><a href="checkout.html"><%out.print(userResponse.getUserName());%></a></li>
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
                            <a href="/home">
                                <span class="fa fa-shopping-cart"></span>
                                <p>daily<strong>Shop</strong> <span>Your Shopping Partner</span></p>
                            </a>
                            <!-- img based logo -->
                            <!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
                        </div>
                        <!-- / logo  -->
                        <!-- cart box -->
                        <div class="aa-cartbox">
                            <a class="aa-cart-link" href="#">
                                <span class="fa fa-shopping-basket"></span>
                                <span class="aa-cart-title">SHOPPING CART</span>
                                <span class="aa-cart-notify">2</span>
                            </a>
                            <%
                                MySqlConnectionUtil sqlConnectionUtil = new MySqlConnectionUtil();
                                ResultSet resultSet = sqlConnectionUtil.chonDuLieuTuDTB("select SanPham.hinhAnh, SanPham.ten, SanPham.giaBan, MyCart.soLuongMua,(soLuongMua*giaBan), SanPham.maSp, id_mycart " +
                                        "from MyCart, sanpham " +
                                        "where MyCart.maSp = SanPham.maSp and id_user="+userResponse.getId()+" limit 4");
                                String sum= null;
                            %>
                            <div class="aa-cartbox-summary">
                                <ul>
                                    <%
                                        while(resultSet.next()){
                                            sum = resultSet.getString(5);
                                    %>
                                    <li>
                                        <a class="aa-cartbox-img" href="#"><img src="<c:url value="<%=resultSet.getString(1)%>"/>" alt="img"></a>
                                        <div class="aa-cartbox-info">
                                            <h4><a href="#"><%=resultSet.getString(2)%></a></h4>
                                            <p><%=resultSet.getString(4)%> x <%=resultSet.getString(3)%></p>
                                        </div>
                                        <a class="aa-remove-product" href="/removecard?maCard=<%=resultSet.getString(7)%>"><span class="fa fa-times"></span></a>
                                    </li>
                                    <%
                                        }
                                    %>
                                    <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                                        <span class="aa-cartbox-total-price">
                                            <%out.print(sum);%>
                      </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- / cart box -->
                        <!-- search box -->
                        <div class="aa-search-box">
                            <form action="">
                                <input type="text" name="" placeholder="Search here ex. 'man' ">
                                <button type="submit"><span class="fa fa-search"></span></button>
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
                        <li><a href="/home">Home</a></li>
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
                        <li><a href="#">Furniture</a></li>
                        <li><a href="blog.jsp">Blog</a>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                        <li><a href="#">Pages <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="product.html">Shop Page</a></li>
                                <li><a href="product-detail.html">Shop Single</a></li>
                                <li><a href="404.html">404 Page</a></li>
                            </ul>
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
                <h2>Fashion</h2>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Women</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->

<!-- product category -->
<section id="aa-product-category">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
                <div class="aa-product-catg-content">
                    <div class="aa-product-catg-head">
                        <div class="aa-product-catg-head-left">
                            <form action="/sort" class="aa-sort-form">
                                <label for="">Sort by Price</label>
                                <select name="sort">
                                    <option value="1" selected="desc">High to Low</option>
                                    <option value="2" selected="asc">Low to High</option>
                                    <option value="3" selected="default">Default</option>
                                </select>
                            </form>
                            <form>

                            </form>
                        </div>
                        <div class="aa-product-catg-head-right">
                            <a id="grid-catg" href="#"><span class="fa fa-th"></span></a>
                            <a id="list-catg" href="#"><span class="fa fa-list"></span></a>
                        </div>
                    </div>

                    <%
                        ServletContext context = getServletConfig().getServletContext();
                        String a = String.valueOf(context.getAttribute("ahihi"));
                        String search = String.valueOf(context.getAttribute("search"));
                        String color = String.valueOf(context.getAttribute("color"));
                        if (search.equals("null")){
                            search = "";
                        }
                        if (a.equals("null")){
                            a="";
                        }
                        if (color.equals("null")){
                            color="";
                        }
                        ResultSet rs = null;
                        MySqlConnectionUtil con = new MySqlConnectionUtil();
                        rs = con.chonDuLieuTuDTB("select * from SanPham where soLuong<10000 " + a + search + color);
                    %>
                    <div class="aa-product-catg-body">
                        <ul class="aa-product-catg">
                            <%
                                while(rs.next()){
                            %>
                            <!-- start single product item -->
                            <li>
                                <figure>
                                    <a class="aa-product-img" href="#"><img src="<c:url value="<%=rs.getString(3) %>"/>" alt="polo shirt img"></a>
                                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                    <figcaption>
                                        <h4 class="aa-product-title"><a href="#"><%=rs.getString(2) %></a></h4>
                                        <span class="aa-product-price"><%=rs.getString(5) %></span>
                                        <p class="aa-product-descrip">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam accusamus facere iusto, autem soluta amet sapiente ratione inventore nesciunt a, maxime quasi consectetur, rerum illum.</p>
                                    </figcaption>
                                </figure>
                                <div class="aa-product-hvr-content">
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>
                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                </div>
                                <!-- product badge -->
                                <span class="aa-badge aa-sold-out" href="#"><%=rs.getString(9) %></span>
                            </li>
                            <%
                                }
                            %>

                        </ul>
                        <!-- quick view modal -->
                        <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <div class="row">
                                            <!-- Modal view slider -->
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div class="aa-product-view-slider">
                                                    <div class="simpleLens-gallery-container" id="demo-1">
                                                        <div class="simpleLens-container">
                                                            <div class="simpleLens-big-image-container">

                                                                <a class="simpleLens-lens-image" data-lens-image="<c:url value="/templatesecond/img/view-slider/large/polo-shirt-1.png"/>">
                                                                    <img src="<c:url value="/templatesecond/img/view-slider/medium/polo-shirt-1.png"/>" class="simpleLens-big-image">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="simpleLens-thumbnails-container">
                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="img/view-slider/large/polo-shirt-1.png"
                                                               data-big-image="img/view-slider/medium/polo-shirt-1.png">

                                                                <img src="<c:url value="/templatesecond/img/view-slider/thumbnail/polo-shirt-1.png"/>">
                                                            </a>
                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="img/view-slider/large/polo-shirt-3.png"
                                                               data-big-image="img/view-slider/medium/polo-shirt-3.png">
                                                                <img src="<c:url value="/templatesecond/img/view-slider/thumbnail/polo-shirt-1.png"/>">
                                                            </a>

                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="img/view-slider/large/polo-shirt-4.png"
                                                               data-big-image="img/view-slider/medium/polo-shirt-4.png">
                                                                <img src="<c:url value="/templatesecond/img/view-slider/thumbnail/polo-shirt-1.png"/>">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal view content -->
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div class="aa-product-view-content">
                                                    <h3>T-Shirt</h3>
                                                    <div class="aa-price-block">
                                                        <span class="aa-product-view-price">$34.99</span>
                                                        <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis animi, veritatis quae repudiandae quod nulla porro quidem, itaque quis quaerat!</p>
                                                    <h4>Size</h4>
                                                    <div class="aa-prod-view-size">
                                                        <a href="#">S</a>
                                                        <a href="#">M</a>
                                                        <a href="#">L</a>
                                                        <a href="#">XL</a>
                                                    </div>
                                                    <div class="aa-prod-quantity">
                                                        <form action="">
                                                            <select name="" id="">
                                                                <option value="0" selected="1">1</option>
                                                                <option value="1">2</option>
                                                                <option value="2">3</option>
                                                                <option value="3">4</option>
                                                                <option value="4">5</option>
                                                                <option value="5">6</option>
                                                            </select>
                                                        </form>
                                                        <p class="aa-prod-category">
                                                            Category: <a href="#">Polo T-Shirt</a>
                                                        </p>
                                                    </div>
                                                    <div class="aa-prod-view-bottom">
                                                        <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                        <a href="#" class="aa-add-to-cart-btn">View Details</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div>
                        <!-- / quick view modal -->
                    </div>
                    <div class="aa-product-catg-pagination">
                        <nav>
                            <ul class="pagination">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
                <aside class="aa-sidebar">
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Category</h3>
                        <ul class="aa-catg-nav">
                            <li><a href="/category?action=0">All</a></li>
                            <li><a href="/category?action=1">Men</a></li>
                            <li><a href="/category?action=2">Women</a></li>
                            <li><a href="/category?action=3">Kids</a></li>
                            <li><a href="/category?action=4">Shoes</a></li>
                            <li><a href="/category?action=5">Bags</a></li>
                        </ul>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Tags</h3>
                        <div class="tag-cloud">
                            <a href="#">Fashion</a>
                            <a href="#">Ecommerce</a>
                            <a href="#">Shop</a>
                            <a href="#">Hand Bag</a>
                            <a href="#">Laptop</a>
                            <a href="#">Head Phone</a>
                            <a href="#">Pen Drive</a>
                        </div>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Shop By Price</h3>
                        <!-- price range -->
                        <div class="aa-sidebar-price-range">
                            <form action="/filterPrice">
                                <input type="text" size="10" name="olePrice">-
                                -<input type="text" size="10" name="newPrice">
                                <hr>
                                <button class="aa-filter-btn" type="submit">Filter</button>
                            </form>
                        </div>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Shop By Color</h3>
                        <div class="aa-color-tag">
                            <a class="aa-color-green" href="/color?action=green"></a>
                            <a class="aa-color-yellow" href="/color?action=yellow"></a>
                            <a class="aa-color-pink" href="/color?action=pink"></a>
                            <a class="aa-color-red" href="/color?action=red"></a>
                            <a class="aa-color-blue" href="/color?action=blue"></a>
                            <a class="aa-color-orange" href="/color?action=orange"></a>
                            <a class="aa-color-gray" href="/color?action=gray"></a>
                            <a class="aa-color-black" href="/color?action=black"></a>
                            <a class="aa-color-white" href="/color?action=white"></a>
                            <a class="aa-color-cyan" href="/color?action=cyan"></a>
                            <a class="aa-color-olive" href="/color?action=olive"></a>
                            <a class="aa-color-orchid" href="/color?action=orchid"></a>
                        </div>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Recently Views</h3>
                        <div class="aa-recently-views">
                            <ul>
                                <li>
                                    <a href="#" class="aa-cartbox-img"><img alt="img" src="<c:url value="/templatesecond/img/woman-small-2.jpg"/>"></a>
                                    <div class="aa-cartbox-info">
                                        <h4><a href="#">Product Name</a></h4>
                                        <p>1 x $250</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="aa-cartbox-img"><img alt="img" src="<c:url value="/templatesecond/img/woman-small-2.jpg"/>"></a>
                                    <div class="aa-cartbox-info">
                                        <h4><a href="#">Product Name</a></h4>
                                        <p>1 x $250</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="aa-cartbox-img"><img alt="img" src="<c:url value="/templatesecond/img/woman-small-2.jpg"/>"></a>
                                    <div class="aa-cartbox-info">
                                        <h4><a href="#">Product Name</a></h4>
                                        <p>1 x $250</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Top Rated Products</h3>
                        <div class="aa-recently-views">
                            <ul>
                                <li>
                                    <a href="#" class="aa-cartbox-img"><img alt="img" src="<c:url value="/templatesecond/img/woman-small-2.jpg"/>"></a>
                                    <div class="aa-cartbox-info">
                                        <h4><a href="#">Product Name</a></h4>
                                        <p>1 x $250</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="aa-cartbox-img"><img alt="img" src="<c:url value="/templatesecond/img/woman-small-2.jpg"/>"></a>
                                    <div class="aa-cartbox-info">
                                        <h4><a href="#">Product Name</a></h4>
                                        <p>1 x $250</p>
                                    </div>
                                </li>
                                <li>
                                    <a href="#" class="aa-cartbox-img"><img alt="img" src="<c:url value="/templatesecond/img/woman-small-2.jpg"/>"></a>
                                    <div class="aa-cartbox-info">
                                        <h4><a href="#">Product Name</a></h4>
                                        <p>1 x $250</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </aside>
            </div>

        </div>
    </div>
</section>
<!-- / product category -->


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
                                        <li><a href="contact.jsp">Contact Us</a></li>
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