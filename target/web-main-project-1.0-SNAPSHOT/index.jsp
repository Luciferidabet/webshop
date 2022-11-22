<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/favicon.png" type="image/x-icon" />
    <title>Magic Shop - Bakery | Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/reponsive.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://kit.fontawesome.com/dd9a768261.js" crossorigin="anonymous"></script>
    <script src="/js/data.js"></script>
    <script src ="js/main.js"></script>

</head>
<body>
    <div class="wrap">
        <div class="container">
                <div class="row justify-content-between">
                        <div class="col-12 col-md d-flex align-items-center">
                                <p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0909374409</a> or <span class="mailus">email us:</span> <a href="#">bakerymagicshop25@gmail.com</a></p>
                        </div>
                        <div class="col-12 col-md d-flex justify-content-md-end">
                                <p class="mb-0">Mon - Fri / 9:00-21:00, Sat - Sun / 10:00-20:00</p>
                                <div class="social-media">
                                        <p class="mb-0 d-flex">
                                                <a href="https://www.facebook.com/dhspkt.hcmute" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                                                <a href="https://www.facebook.com/dhspkt.hcmute" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                                                <a href="https://www.facebook.com/dhspkt.hcmute" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>

                                        </p>
                                </div>
                        </div>
                </div>
        </div>
        
        <div class=" right-content mg-left">
            
            
            <c:if test="${sessionScope.acc == null}">
                <a href="./signIn-signUp.jsp" class="avatar">
                    <img src="images/customer_1.jpg" alt="" class="avatar-img">
                </a>
            </c:if>

            <c:if test="${sessionScope.acc != null}">
                <a href="./user-profile.jsp" class="avatar">
                    <img src="images/customer_1.jpg" alt="" class="avatar-img">
                </a>
            </c:if>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="MainControl?action=home">Magic <span>Shop</span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="oi oi-menu"></span> Menu
                </button>
                
                <c:if test="${sessionScope.acc.isAdmin != 1}">
                    <div class="collapse navbar-collapse" id="ftco-nav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                            <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                            <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                            <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                            <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                            <li class="nav-item"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                            <li class="nav-item"><a href="MainControl?action=contact" class="nav-link">Contact</a></li>
                        </ul>
                    </div>
                </c:if>
                
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <div class="collapse navbar-collapse" id="ftco-nav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                            <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                            <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                            <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                            <li class="nav-item"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                            <li class="nav-item"><a href="ManagerProductControl?action=manager_product" class="nav-link">Manager Product</a></li>
                            <li class="nav-item"><a href="MainControl?action=manager_account" class="nav-link">Manager Account</a></li>
                        </ul>
                    </div>
                </c:if>
                
                
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <div id="manage">
                        <div class="right-content">
                            <a href="#"><i style="color:#fff; width: 36px;" class="fa-solid fa-gear"></i></a>
                        </div>
                    </div>
                </c:if>
                
                <c:if test="${sessionScope.acc.isAdmin != 1}">
                    <div id="cart">
                        <div class="right-content">
                          <div class="dot-inf"></div>
                          <i class="fas fa-shopping-cart"></i>
                        </div>
                    </div>
                </c:if>

                <div id="myModal" class="modal">
                    <div class="modal-content">
                      <div class="modal-header">
                            <h5 class="modal-title">Cart</h5>
                            <span class="close">&times;</span>
                      </div>

                      <div class="modal-body">
                            <div class="cart-row">
                              <span class="cart-item cart-header cart-column">Product</span>
                              <span class="cart-price cart-header cart-column">Price</span>
                              <span class="cart-quantity cart-header cart-column">Quantity</span>
                            </div>
                            <div class="cart-items">
                                <div class="cart-row">
                                  <div class="cart-item cart-column">
                                        <img class="cart-item-image" src="images/bread-5-detail1.jpg" width="100" height="100">
                                        <span class="cart-item-title">Cheese Roll</span>
                                  </div>

                                  <span class="cart-price cart-column">29$</span>
                                  <div class="cart-quantity cart-column">
                                        <input class="cart-quantity-input" type="number" value="1">
                                        <button class="modal-btn btn-danger" type="button">Delete</button>
                                  </div>
                               </div>
                                <div class="cart-row">
                                  <div class="cart-item cart-column">
                                        <img class="cart-item-image" src="images/bread12-detail1.jpg" width="100" height="100">
                                        <span class="cart-item-title">Meat Pie (Pastel De Carne)</span>
                                  </div>
                                  <span class="cart-price cart-column">29$</span>
                                  <div class="cart-quantity cart-column">
                                        <input class="cart-quantity-input" type="number" value="2">
                                        <button class="modal-btn btn-danger" type="button">Delete</button>
                                  </div>
                                </div>
                            </div>

                            <div class="cart-total">
                                  <strong class="cart-total-title">Total:</strong>
                                  <span class="cart-total-price">87$</span>
                            </div>


                            <div class="modal-footer">
                                <button type="button" class="modal-btn btn-secondary close-footer">Close</button>
                                  <c:if test="${sessionScope.acc == null}">
                                      <a href="./signIn-signUp.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                                  </c:if>

                                  <c:if test="${sessionScope.acc != null}">
                                      <a href="./checkout.jsp"><button type="button" class="modal-btn btn-primary order">Checkout</button></a>
                                  </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </nav>
    <!-- END nav -->

    <section class="hero-wrap">
            <div class="home-slider owl-carousel js-fullheight">
                    <div class="slider-item js-fullheight" style="background-image:url(images/bg_1.jpg);">
                            <div class="overlay"></div>
                            <div class="container">
                                    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
                                            <div class="col-md-12 ftco-animate">
                                                    <div class="text w-100 mt-5 text-center">
                                                            <span class="subheading">Magic Shop Bakery</span>
                                                            <h1>Cooking Since</h1>
                                                            <span class="subheading-2">1958</span>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>

                    <div class="slider-item js-fullheight" style="background-image:url(images/bg_2.jpg);">
                            <div class="overlay"></div>
                            <div class="container">
                                    <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
                                            <div class="col-md-12 ftco-animate">
                                                    <div class="text w-100 mt-5 text-center">
                                                            <span class="subheading">Magic Shop Bakery</span>
                                                            <h1>Best Quality</h1>
                                                            <span class="subheading-2 sub">Cake</span>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>



    <section class="ftco-section ftco-wrap-about ftco-no-pb ftco-no-pt">
            <div class="container">
                    <div class="row no-gutters">
                            <div class="col-sm-4 p-4 p-md-5 d-flex align-items-center justify-content-center bg-primary">
                                    <form action="booking" method="post" class="appointment-form">
                                        <h3 class="mb-3">Book A Table</h3>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input name="bookingName" type="name" class="form-control" placeholder="Name">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input name="bookingEmail" type="email" class="form-control" placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input name="bookingPhone" type="text" class="form-control" placeholder="Phone">
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                        <div class="input-wrap">
                                                                <div class="icon"><span class="fa fa-calendar"></span></div>
                                                                <input name="bookingDate" type="text" class="form-control book_date" placeholder="Check-In">
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                        <div class="input-wrap">
                                                                <div class="icon"><span class="fa fa-clock-o"></span></div>
                                                                <input name="bookingTime" type="text" class="form-control book_time" placeholder="Time">
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                        <div class="form-field">
                                                                <div class="select-wrap">
                                                                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                                        <select name="bookingQuantity" id="" class="form-control">
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="">Guest</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="1">1</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="2">2</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="3">3</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="4">4</option>
                                                                                <option style="color: rgba(0, 0, 0, 0.7) !important;" value="5">5</option>
                                                                        </select>
                                                                </div>
                                                        </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="submit" value="Book A Table Now" class="btn btn-white py-3 px-4">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                            </div>
                            <div class="col-sm-8 wrap-about py-5 ftco-animate img" style="background-image: url(images/about.jpg);">
                                    <div class="row pb-5 pb-md-0">
                                            <div class="col-md-12 col-lg-7">
                                                    <div class="heading-section mt-5 mb-4">
                                                            <div class="pl-lg-3 ml-md-5">
                                                                    <span class="subheading">About</span>
                                                                    <h2 class="mb-4">Welcome to <br> Magic Shop</h2>
                                                            </div>
                                                    </div>
                                                    <div class="pl-lg-3 ml-md-5">
                                                            <p>We founded Magic Shop with one goal in mind: providing a high-quality, smart, and reliable online store. Our passion for excellence has driven us from the beginning, and continues to drive us into the future. We know that every product counts, and strive to make the entire shopping experience as rewarding as possible. Check it out for yourself!</p>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section ftco-intro" style="background-image: url(images/bg_3.jpg);">
            <div class="overlay"></div>
            <div class="container">
                    <div class="row">
                            <div class="col-md-12 text-center">
                                    <span>Now Booking</span>
                                    <h2>Private Appointments &amp; Happy Hours</h2>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section">
            <div class="container">
                    <div class="row justify-content-center mb-5 pb-2">
                            <div class="col-md-7 text-center heading-section ftco-animate">
                                    <span class="subheading">Specialties</span>
                                    <h2 class="mb-4">Our Menu</h2>
                            </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <div class="menu-wrap">
                                    <div class="heading-menu text-center ftco-animate">
                                            <h3><a href="MainControl?action=menu">Breads</a></h3>
                                    </div>
                                    <c:forEach items="${ListP1}" var = "o">
                                        <div class="menus d-flex ftco-animate">
                                            <div class="menu-img img" style="background-image: url(${o.productImg_path});"></div>
                                                <div class="text">
                                                        <div class="d-flex">
                                                                <div class="one-half">
                                                                        <h3><a href="${o.detail_path}">${o.product_name}</a></h3>
                                                                </div>
                                                                <div class="one-forth">
                                                                        <span class="price">$ ${o.price}</span>
                                                                </div>
                                                        </div>
                                                        <p>${o.description}</p>
                                                </div>
                                            </div>
                                    </c:forEach>
                                   <span class="flat flaticon-cupcake" style="left: 0;"></span>
                                   <span class="flat flaticon-ice-cream" style="right: 0;"></span>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-4">
                            <div class="menu-wrap">
                                <div class="heading-menu text-center ftco-animate">
                                        <h3><a href="MainControl?action=menu">Cakes</a></h3>
                                </div>
                                <c:forEach items="${ListP2}" var = "o">
                                    <div class="menus d-flex ftco-animate">
                                        <div class="menu-img img" style="background-image: url(${o.productImg_path});"></div>
                                            <div class="text">
                                                <div class="d-flex">
                                                        <div class="one-half">
                                                                <h3><a href="${o.detail_path}">${o.product_name}</a></h3>
                                                        </div>
                                                        <div class="one-forth">
                                                                <span class="price">$ ${o.price}</span>
                                                        </div>
                                                </div>
                                                <p>${o.description}</p>
                                            </div>
                                        </div>
                                </c:forEach>
                                <span class="flat flaticon-cupcake" style="left: 0;"></span>
                                <span class="flat flaticon-ice-cream" style="right: 0;"></span>
                            </div>
                        </div>

                            <div class="col-md-6 col-lg-4">
                                    <div class="menu-wrap">
                                            <div class="heading-menu text-center ftco-animate">
                                                    <h3><a href="MainControl?action=menu">Cafe &amp; Beverages</a></h3>
                                            </div>
                                            <c:forEach items="${ListP3}" var = "o">
                                                <div class="menus d-flex ftco-animate">
                                                    <div class="menu-img img" style="background-image: url(${o.productImg_path});"></div>
                                                        <div class="text">
                                                                <div class="d-flex">
                                                                        <div class="one-half">
                                                                                <h3><a href="${o.detail_path}">${o.product_name}</a></h3>
                                                                        </div>
                                                                        <div class="one-forth">
                                                                                <span class="price">$ ${o.price}</span>
                                                                        </div>
                                                                </div>
                                                                <p>${o.description}</p>
                                                        </div>
                                                    </div>
                                            </c:forEach>
                                            <span class="flat flaticon-wine" style="left: 0;"></span>
                                            <span class="flat flaticon-wine-1" style="right: 0;"></span>
                                    </div>
                            </div>
                    </div>
            </div>

    </section>

    <section class="ftco-section testimony-section" style="background-image: url(images/bg_5.jpg);">
            <div class="overlay"></div>
            <div class="container">
                    <div class="row justify-content-center mb-3 pb-2">
                            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                                    <span class="subheading">Testimony</span>
                                    <h2 class="mb-4">Happy Customer</h2>
                            </div>
                    </div>
                    <div class="row ftco-animate justify-content-center">
                            <div class="col-md-7">
                                    <div class="carousel-testimony owl-carousel ftco-owl">
                                            <div class="item">
                                                    <div class="testimony-wrap text-center">
                                                            <div class="text p-3">
                                                                    <p class="mb-4">The staff are lovely and very attentive. The cake is very delicious and strange.</p>
                                                                     <div class="user-img mb-4" style="background-image: url(images/customer_1.jpg)">
                                                                      <span class="quote d-flex align-items-center justify-content-center">
                                                                              <i class="fa fa-quote-left"></i>
                                                                       </span>
                                                                     </div>
                                                                     <p class="name">John Parker</p>
                                                                     <span class="position">Customer</span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="item">
                                                    <div class="testimony-wrap text-center">
                                                      <div class="text p-3">
                                                                    <p class="mb-4">The cake at the shop is very delicious and diverse. We will visit again.</p>
                                                                    <div class="user-img mb-4" style="background-image: url(images/customer_1.jpg)">
                                                                            <span class="quote d-flex align-items-center justify-content-center">
                                                                                    <i class="fa fa-quote-left"></i>
                                                                            </span>
                                                                    </div>
                                                                    <p class="name">Celina Amber</p>
                                                                    <span class="position">Customer</span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="item">
                                                    <div class="testimony-wrap text-center">
                                                      <div class="text p-3">
                                                                    <p class="mb-4">The shop space is very spacious. The cake is delicious. Staff is very cute.</p>
                                                                    <div class="user-img mb-4" style="background-image: url(images/customer_1.jpg)">
                                                                            <span class="quote d-flex align-items-center justify-content-center">
                                                                                    <i class="fa fa-quote-left"></i>
                                                                            </span>
                                                                    </div>
                                                                    <p class="name">Murru Alice</p>
                                                                    <span class="position">Customer</span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="item">
                                                    <div class="testimony-wrap text-center">
                                                      <div class="text p-3">
                                                                    <p class="mb-4">I just wanted to tell you that I love the Empanadas.  All the products I have received are excellent and the dough is so flaky!  I will be your customer for a long time!</p>
                                                                    <div class="user-img mb-4" style="background-image: url(images/customer_1.jpg)">
                                                                            <span class="quote d-flex align-items-center justify-content-center">
                                                                                    <i class="fa fa-quote-left"></i>
                                                                            </span>
                                                                    </div>
                                                                    <p class="name">Anna Maria</p>
                                                                    <span class="position">Customer</span>
                                                            </div>
                                                    </div>
                                            </div>

                                            <div class="item">
                                                    <div class="testimony-wrap text-center">
                                                      <div class="text p-3">
                                                                    <p class="mb-4">I just wanted to say thank you, received my order and everything was perfect and delicious!</p>
                                                                    <div class="user-img mb-4" style="background-image: url(images/customer_1.jpg)">
                                                                            <span class="quote d-flex align-items-center justify-content-center">
                                                                                    <i class="fa fa-quote-left"></i>
                                                                            </span>
                                                                    </div>
                                                                    <p class="name">Rihanna Aurora </p>
                                                                    <span class="position">Customer</span>
                                                            </div>
                                                    </div>
                                            </div>

                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section bg-light">
            <div class="container">
                    <div class="row justify-content-center mb-5 pb-2">
                            <div class="col-md-7 text-center heading-section ftco-animate">
                                    <span class="subheading">Chef</span>
                                    <h2 class="mb-4">Our Master Chef</h2>
                            </div>
                    </div>	
                    <div class="row">
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/chef-4.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>John Gustavo</h3>
                                                    <span class="position mb-2">CEO, Co Founder</span>
                                                    <div class="faded">
                                                            <p>I am an ambitious workaholic, but apart from that, pretty simple person. I love baking and now I have a owner bakery.</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/chef-2.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>Michelle Fraulen</h3>
                                                    <span class="position mb-2">Head Chef</span>
                                                    <div class="faded">
                                                            <p>Some people may think cooking is just a daily work to make cakes. But for me, cooking is a hobby - the best hobby to have.</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/chef-3.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>Alfred Smith</h3>
                                                    <span class="position mb-2">Chef Cook</span>
                                                    <div class="faded">
                                                            <p>I was about six years old, when I started learning how to make cake. It is something that I inherited from my grandmother.</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-6 col-lg-3 ftco-animate">
                                    <div class="staff">
                                            <div class="img" style="background-image: url(images/chef-1.jpg);"></div>
                                            <div class="text px-4 pt-2">
                                                    <h3>Antonio Santibanez</h3>
                                                    <span class="position mb-2">Chef Cook</span>
                                                    <div class="faded">
                                                            <p>For me, baking is a way for me to relax, express my feelings. I hope I have a bakery in the future and I will introduce my cake.</p>
                                                            <ul class="ftco-social d-flex">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                            </ul>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container">
                    <div class="row d-flex">
                            <div class="col-md-6 d-flex">
                                    <div class="img img-2 w-100 mr-md-2" style="background-image: url(images/bg_6.jpg);"></div>
                                    <div class="img img-2 w-100 ml-md-2" style="background-image: url(images/space_1.jpeg);"></div>
                            </div>
                            <div class="col-md-6 ftco-animate makereservation p-4 p-md-5">
                                    <div class="heading-section ftco-animate mb-5">
                                            <span class="subheading">This is our secrets</span>
                                            <h2 class="mb-4">Perfect Bakery</h2>
                                            <p>MagicShop is a sweet (and occasionally savory) shop that's been turning familiar treats upside down and on their heads, shaking up the dessert scene since 2008. Bon Appetit magazine called us "one of the most exciting bakeries in the country". But you can literally just call us MagicShop. We're not big on feeding the hype beast. But we're super into feeding our flavorful treats to those who crave the unexpected.
                                            </p>
                                            <p><a href="reservation.jsp" class="btn btn-primary">Learn more</a></p>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section bg-light">
            <div class="container">
                    <div class="row justify-content-center mb-5 pb-2">
                            <div class="col-md-7 text-center heading-section ftco-animate">
                                    <span class="subheading">Blog</span>
                                    <h2 class="mb-4">Recent Blog</h2>
                            </div>
                    </div>
                    <div class="row">
                            <div class="col-md-4 ftco-animate">
                                    <div class="blog-entry">
                                            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/img-1.jpg');">
                                            </a>
                                            <div class="text px-4 pt-3 pb-4">
                                                    <div class="meta">
                                                            <div><p>August 3, 2020</p></div>
                                                            <div><p>Admin</p></div>
                                                    </div>
                                                    <h3 class="heading"><a href="blog-single.jsp">CROQUETTE ORIGIN: WHERE IT COMES FROM AND HOW TO ENJOY</a></h3>
                                                    <p class="clearfix">
                                                            <a href="blog-single.jsp" class="float-left read btn btn-primary">Read more</a>
                                                            <a href="blog-single.jsp" class="float-right meta-chat"><span class="fa fa-comment"></span> 3</a>
                                                    </p>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-4 ftco-animate">
                                    <div class="blog-entry">
                                            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/img-2.jpg');">
                                            </a>
                                            <div class="text px-4 pt-3 pb-4">
                                                    <div class="meta">
                                                            <div><p>August 23, 2021</p></div>
                                                            <div><p>Admin</p></div>
                                                    </div>
                                                    <h3 class="heading"><a href="blog-single.jsp">HOW TO COOK WITH POBLANO PEPPERS</a></h3><br>
                                                    <p class="clearfix">
                                                            <a href="blog-single.jsp" class="float-left read btn btn-primary">Read more</a>
                                                            <a href="blog-single.jsp" class="float-right meta-chat"><span class="fa fa-comment"></span> 3</a>
                                                    </p>
                                            </div>
                                    </div>
                            </div>
                            <div class="col-md-4 ftco-animate">
                                    <div class="blog-entry">
                                            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/img-3.png');">
                                            </a>
                                            <div class="text px-4 pt-3 pb-4">
                                                    <div class="meta">
                                                            <div><p>June 29, 2021</p></div>
                                                            <div><p>Admin</p></div>
                                                    </div>
                                                    <h3 class="heading"><a href="blog-single.jsp"></a>WHAT EXACTLY IS A SERRANO? MYSTERIES UNCOVERED</h3><br>
                                                    <p class="clearfix">
                                                            <a href="blog-single.jsp" class="float-left read btn btn-primary">Read more</a>
                                                            <a href="blog-single.jsp" class="float-right meta-chat"><span class="fa fa-comment"></span> 3</a>
                                                    </p>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-intro bg-primary">
            <div class="container py-5">
                    <div class="row py-2">
                            <div class="col-md-12 text-center">
                                    <h2>We Make Delicious &amp; Nutritious Food</h2>
                                    <a href="reservation.jsp" class="btn btn-white btn-outline-white">Book A Table Now</a>
                            </div>
                    </div>
            </div>
    </section>
<c:import url="/footer.jsp" />
<!-- <script>
    var close_footer = document.getElementsByClassName("close-footer")[0];
    close_footer.onclick = function () {
    modal.style.display = "none";
  };
</script>-->