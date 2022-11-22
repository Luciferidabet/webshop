<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/favicon.png" type="image/x-icon" />
    <title>Magic Shop - Bakery | Reservation</title>
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
					<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">+84 792 204 127</a> or <span class="mailus">email us:</span> <a href="#">bakerymagicshop25@gmail.com</a></p>
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
                <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item active"><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                <li class="nav-item"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
                <li class="nav-item"><a href="MainControl?action=contact" class="nav-link">Contact</a></li>
            </ul>
        </div>
    </c:if>

    <c:if test="${sessionScope.acc.isAdmin == 1}">
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Blog</a></li>
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
	</nav>
    <!-- END nav -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_5.jpg');" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end justify-content-center">
				<div class="col-md-9 ftco-animate text-center mb-5">
					<h1 class="mb-2 bread">Book A Table Now</h1>
					<p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span>Reservation <i class="fa fa-chevron-right"></i></span></p>
				</div>
			</div>
		</div>
	</section>

	<section style="margin: 100px 30px;" class="ftco-section ftco-wrap-about ftco-no-pb ftco-no-pt">
		<div class="container">
			<div class="row no-gutters">
				<div  class="col-sm-12 p-4 p-md-5 d-flex align-items-center justify-content-center bg-primary">
                                    <form action="booking" method="post" class="appointment-form">
						<h3 class="mb-3">Book your Table</h3>
						<div class="row justify-content-center">
							<div class="col-md-4">
								<div class="form-group">
                                                                    <input name="bookingName" type="name" class="form-control" placeholder="Name">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<input name="bookingEmail" type="email" class="form-control" placeholder="Email">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
                                                                    <input name="bookingPhone" type="text" class="form-control" placeholder="Phone">
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon"><span class="fa fa-calendar"></span></div>
                                                                                <input name="bookingDate" type="text" class="form-control book_date" placeholder="Check-In">
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<div class="input-wrap">
										<div class="icon"><span class="fa fa-clock-o"></span></div>
                                                                                <input name="bookingTime" type="text" class="form-control book_time" placeholder="Time">
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon"><span class="fa fa-chevron-down"></span></div>
											<select name="bookingQuantity" id="" class="form-control">
												<option  style="color: rgba(0, 0, 0, 0.7) !important;" value="">Guest</option>
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
							<div class="col-md-4">
								<div class="form-group">
									<input type="submit" value="Book Your Table Now" class="btn btn-white py-3 px-4">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

<c:import url="/footer.jsp" />