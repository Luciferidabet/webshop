 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
<html lang="en">
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="icon" href="/images/favicon.png" type="image/x-icon" />
    <title>Magic Shop - Bakery | Blog</title>
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
                <li class="nav-item "><a href="MainControl?action=home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="MainControl?action=about" class="nav-link">About</a></li>
                <!-- <li class="nav-item"><a href="./order/order.html" class="nav-link">Order</a></li> -->
                <li class="nav-item"><a href="MainControl?action=menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="MainControl?action=reservation" class="nav-link">Reservation</a></li>
                <li class="nav-item active"><a href="MainControl?action=blog" class="nav-link">Blog</a></li>
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
                <li class="nav-item active"><a href="MainControl?action=reservation" class="nav-link">Blog</a></li>
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
            <h1 class="mb-2 bread">Blog Single</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="MainControl?action=home">Home <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="blog.jsp">Blog <i class="fa fa-chevron-right"></i></a></span> <span>Blog Single <i class="fa fa-chevron-right"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
     <div class="container">
      <div class="row">
        <div class="col-lg-8 ftco-animate">
          <p>
            <img src="images/img-1.jpg" alt="" class="img-fluid">
          </p>
          <h2 class="mb-3" style="font-size: 1.5 rem; font-weight:bold; line-height:1.2;">CROQUETTE ORIGIN: WHERE IT COMES FROM AND HOW TO ENJOY</h2>
        <p class="time-color" style="margin-top: -15px; font-size:13px;">August 3, 2021</p>
        <p>Croquettes are the ultimate labor of love. There is nothing quite like a croquette?the dish is simple and in the best way. This food always seems to remind you of a welcoming home-cooked meal. Croquettes bring back nostalgia while giving you a place of common ground to stand upon with new people, inviting you to create new memories and relationships.</p>
        <h6 class="time-color" style="font-weight: bold;">THE ORIGIN OF THE CROQUETTE</h6>
        <p>A croquette is a small cylinder or ball of filling that has been breaded and fried. Auguste Escoffier, a French culinary artist, created the modern form of these bundles of joy in France in 1898. Although Escoffier was the founder of this classic dish, Phileas Gilbert, another widely-known chef, was also involved in creating and writing down the original recipe. The two chefs had initially noted that croquettes were to be filled with potato, often in mashed form.</p>

        <p>The word 'croquette' is rooted in the French word 'croquer', which means 'to crunch' or 'to bite'. While a croquette is not crunchy all the way through, there is a satisfaction that comes with taking the first bite and breaking the outer shell of the snack. The crunch comes from the egg and bread crumbs that form the outer layer of the food, which is fried to hold everything in place.</p>
        <p>After coming to life in France, croquettes made their way down to Spain, where they soon became trendy and prevalent. Once arriving in Spain, they adopted a new name, 'croquetas'. </p>
        <p>Rather than being filled with potatoes like the original croquettes, croquetas are typically filled with bechamel sauce, as well as some form of chopped meat. Bechamel sauce is a building block that provides the foundation for many classic recipes. When made purely, bechamel sauce is created from butter, flour, milk, and a small amount of seasoning.</p>
        <p>
          <img src="images/blog-single-1.jpg" alt="" class="img-fluid">
        </p>
        <p>Today, a typical croquette can have numerous types of fillings. Some classic fillings of croquettes include different meats, fishes, and vegetables?the sky really is the limit. The filling of each croquette depends on the origin of the dish you are enjoying.</p>
        <h6 class="time-color" style="font-weight: bold;">WHEN SHOULD YOU EAT CROQUETTES</h6>
        <p>Croquettes are suitable for any and every occasion! The dish is extremely versatile and always a crowd-pleaser. That said, you may even love them so much that you want to keep them all to yourself.</p>
        <p>Croquettes are a great dish to serve as an appetizer to guests or as a part of your main meal. Depending on the filling, you can serve croquettes at breakfast, lunch, and dinner. You could even enjoy them over backyard drinks or Sunday brunch. They are also the perfect way to go the extra mile for the people you love when celebrating something - whether that's a friendship or a relationship. </p>
        <p>The next time you find yourself wanting to pair something with a salad or veggie, try croquettes. This combination gives you a nice contrast  when it comes to flavor and texture. Croquettes are a perfect addition to your balanced plate when you pair them with the right foods. The nice thing about croquettes is they allow your other dishes to have more bold flavors.</p>
        <p>
          <img src="images/blog-single-2.jpg" alt="" class="img-fluid">
        </p>
        <p>Croquette fillings are also a fantastic way to use up your leftovers, because reducing your wasted food at home is extremely important. Try making the filling to your croquettes with your leftover fish or vegetables from dinner the night before. This is an amazing way to turn an old dish into something entirely different and new.</p>
        <p>If you're hesitant about using a deep fryer, you can use an air fryer. Air frying your croquettes is a slightly healthier option that's still delicious. An air fryer gives you that deep-fried taste without using oil to fry. However, there is nothing quite like eating a properly fried croquette.</p>

          <div class="tag-widget post-tag-container mb-5 mt-5">
            <div class="tagcloud">
              <a href="menu.jsp" class="tag-cloud-link">Bread</a>
              <a href="menu.jsp" class="tag-cloud-link">Cake</a>
              <a href="menu.jsp" class="tag-cloud-link">Beverage</a>

            </div>
          </div>


          <div class="pt-5 mt-5">
            <h3 class="mb-5 h4 font-weight-bold p-4 bg-light">6 Feedbacks</h3>
            <ul class="comment-list">
              <li class="comment">
                <div class="vcard bio">
                  <img src="images/customer_1.jpg" alt="Image placeholder">
                </div>
                <div class="comment-body">
                  <h3>John Doe</h3>
                  <div class="meta mb-2">August 3, 2020 at 2:21pm</div>
                  <p>Great.</p>
                  <p><a href="#" class="reply">Reply</a></p>
                </div>
              </li>

              <li class="comment">
                <div class="vcard bio">
                  <img src="images/customer_1.jpg" alt="Image placeholder">
                </div>
                <div class="comment-body">
                  <h3>Maria Benker</h3>
                  <div class="meta mb-2">August 5, 2020 at 2:21pm</div>
                  <p>It's so delicious.</p>
                  <p><a href="#" class="reply">Reply</a></p>
                </div>

                <ul class="children">
                  <li class="comment">
                    <div class="vcard bio">
                      <img src="images/customer_1.jpg" alt="Image placeholder">
                    </div>
                    <div class="comment-body">
                      <h3>Hannah</h3>
                      <div class="meta mb-2">August 6, 2020 at 2:21pm</div>
                      <p>Good job!</p>
                      <p><a href="#" class="reply">Reply</a></p>
                    </div>


                    <ul class="children">
                      <li class="comment">
                        <div class="vcard bio">
                          <img src="images/customer_1.jpg" alt="Image placeholder">
                        </div>
                        <div class="comment-body">
                          <h3>John Doe</h3>
                          <div class="meta mb-2">August 7, 2020 at 2:21pm</div>
                          <p>Love u</p>
                          <p><a href="#" class="reply">Reply</a></p>
                        </div>

                        <ul class="children">
                          <li class="comment">
                            <div class="vcard bio">
                              <img src="images/customer_1.jpg" alt="Image placeholder">
                            </div>
                            <div class="comment-body">
                              <h3>Hannah</h3>
                              <div class="meta mb-2">August 3, 2020 at 2:21pm</div>
                              <p>Love u too</p>
                              <p><a href="#" class="reply">Reply</a></p>
                            </div>
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            </ul>
            <!-- END comment-list -->

            <div class="comment-form-wrap pt-5">
              <h3 class="mb-5 h4 font-weight-bold p-4 bg-light">Leave a comment</h3>
              <form action="#" class="p-4 p-md-5 bg-light">
                <div class="form-group">
                  <label for="name">Name *</label>
                  <input type="text" class="form-control" id="name">
                </div>
                <div class="form-group">
                  <label for="email">Email *</label>
                  <input type="email" class="form-control" id="email">
                </div>
                <div class="form-group">
                  <label for="website">Website</label>
                  <input type="url" class="form-control" id="website">
                </div>

                <div class="form-group">
                  <label for="message">Message</label>
                  <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                </div>
                <div class="form-group">
                  <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                </div>

              </form>
            </div>
          </div>
        </div> <!-- .col-md-8 -->

        <div class="col-lg-4 sidebar ftco-animate">
          <!-- <div class="sidebar-box">
            <form action="#" class="search-form">
              <div class="form-group">
                <span class="icon icon-search"></span>
                <input type="text" class="form-control" placeholder="Type a keyword and hit enter">
              </div>
            </form>
          </div> -->
          <div class="sidebar-box ftco-animate">
           <h3>Category</h3>
           <ul class="categories">
            <li><a href="blog.jsp">Bread <span>(3)</span></a></li>
            <li><a href="blog.jsp">Cake <span>(3)</span></a></li>
            <li><a href="blog.jsp">Beverage <span>(3)</span></a></li>
            <!-- <li><a href="#">Desserts <span>(2)</span></a></li>
            <li><a href="#">Drinks <span>(2)</span></a></li>
            <li><a href="#">Wine <span>(2)</span></a></li> -->
          </ul>
        </div>

        <div class="sidebar-box ftco-animate">
          <h3>Popular Articles</h3>
          <div class="block-21 mb-4 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/img-1.jpg);"></a>
            <div class="text">
              <h3 class="heading" style="font-size:17px;"><a href="blog-single.jsp">CROQUETTE ORIGIN: WHERE IT COMES FROM AND HOW TO ENJOY</a></h3>
              <div class="meta">
                <div><span class="icon-calendar"></span> Aug. 3, 2021</div>
                <div><span class="icon-person"></span> Dave Lewis</div>
                <!-- <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
              </div>
            </div>
          </div>
          <div class="block-21 mb-4 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/img-2.jpg);"></a>
            <div class="text">
              <h3 class="heading"><a href="blog-single.jsp">HOW TO COOK WITH POBLANO PEPPERS</a></h3>
              <div class="meta">
                <div><span class="icon-calendar"></span> Aug. 2, 2021</div>
                <div><span class="icon-person"></span> Marrin</div>
                <!-- <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
              </div>
            </div>
          </div>
          <div class="block-21 mb-4 d-flex">
            <a class="blog-img mr-4" style="background-image: url(images/img-3.png);"></a>
            <div class="text">
              <h3 class="heading"><a href="blog-single.jsp">WHAT EXACTLY IS A SERRANO? MYSTERIES UNCOVERED</a></h3>
              <div class="meta">
                <div><span class="icon-calendar"></span> Aug. 3, 2020</div>
                <div><span class="icon-person"></span> Dave Lewis</div>
                <!-- <div><a href="#"><span class="icon-chat"></span> 19</a></div> -->
              </div>
            </div>
          </div>
        </div>

        <div class="sidebar-box ftco-animate">
          <h3>Tag Cloud</h3>
          <ul class="tagcloud m-0 p-0">
            <!-- <a href="#" class="tag-cloud-link">Dish</a>
            <a href="#" class="tag-cloud-link">Food</a>
            <a href="#" class="tag-cloud-link">Lunch</a> -->
            <a href="menu.jsp" class="tag-cloud-link">Menu</a>
            <a href="menu.jsp" class="tag-cloud-link">Bread</a>
            <a href="menu.jsp" class="tag-cloud-link">Cake</a>
            <a href="menu.jsp" class="tag-cloud-link">Beverage</a>
          </ul>
        </div>

        <!-- <div class="sidebar-box ftco-animate">
         <h3>Archives</h3>
         <ul class="categories">
           <li><a href="#">January 2020 <span>(20)</span></a></li>
           <li><a href="#">February 2020 <span>(30)</span></a></li>
           <li><a href="#">March 2020 <span>(20)</span></a></li>
           <li><a href="#">April 2020 <span>(6)</span></a></li>
           <li><a href="#">May 2020 <span>(8)</span></a></li>
         </ul>
       </div> -->


       <div class="sidebar-box ftco-animate">
        <h3>Paragraph</h3>
        <p>We founded Magic Shop with one goal in mind: providing a high-quality, smart, and reliable online store. Our passion for excellence has driven us from the beginning, and continues to drive us into the future. We know that every product counts, and strive to make the entire shopping experience as rewarding as possible. Check it out for yourself!</p>
      </div>
    </div><!-- END COL -->
    </div>
    </div>
    </section>

    <c:import url="/footer.jsp" />