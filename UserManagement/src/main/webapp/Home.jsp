<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!doctype html>
<html lang="zxx">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>DIREX</title>
  <!-- google fonts -->
  <link href="//fonts.googleapis.com/css2?family=Montserrat:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;1,400&display=swap"
    rel="stylesheet">
  <!-- google fonts -->
  <!-- Template CSS -->
  <link rel="stylesheet" href="assets/css/style-starter.css">
  <!-- Template CSS -->
  
  <title> Home</title>
  
  
  
  <style>
.containerr {
  border: 2px solid #656565;
  background-color: #2A2A2A;
  border-radius: 20px;
  padding: 100px;
  
  margin: auto;
  width: 95%;
 
  padding: 10px;
}
.containerr img {
  border-radius: 5%;
}
.containerr span {
  font-size: 20px;
  margin-right: 15px;
}
@media (max-width: 500px) {
  .containerr {
      text-align: center;
    
  }
  .containerr img {
      margin: auto;
  }
}
input[type=submiit] {
 width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  text-align: center;
  align: center; 
}
input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  
  
}
input[type=submit]:hover {
  background-color: #45a049;
}
.formboader {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
 .custom-btn {
  width: 130px;
  height: 40px;
  padding: 10px 25px;
  border: 2px solid #000;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: linear-gradient(360deg, transparent, #03e9f4);
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
}
 
.btn-6 {
   background: linear-gradient(360deg, transparent, #03e9f4);
  color: #fff;
  line-height: 42px;
  padding: 0;
  border: none;
}
.btn-6 span {
  position: relative;
  display: block;
  width: 100%;
  height: 100%;
}
.btn-6:before,
.btn-6:after {
  position: absolute;
  content: "";
  height: 0%;
  width: 2px;
  background: linear-gradient(360deg, transparent, #03e9f4);
}
.btn-6:before {
  right: 0;
  top: 0;
  transition: all 500ms ease;
}
.btn-6:after {
  left: 0;
  bottom: 0;
  transition: all 500ms ease;
}
.btn-6:hover{
  color: linear-gradient(360deg, transparent, #03e9f4);
  background: transparent;
}
.btn-6:hover:before {
  transition: all 500ms ease;
  height: 100%;
}
.btn-6:hover:after {
  transition: all 500ms ease;
  height: 100%;
}
.btn-6 span:before,
.btn-6 span:after {
  position: absolute;
  content: "";
  background: linear-gradient(360deg, transparent, #03e9f4);
}
.btn-6 span:before {
  left: 0;
  top: 0;
  width: 0%;
  height: 2px;
  transition: all 500ms ease;
}
.btn-6 span:after {
  right: 0;
  bottom: 0;
  width: 0%;
  height: 2px;
  transition: all 500ms ease;
}
.btn-6 span:hover:before {
  width: 100%;
}
.btn-6 span:hover:after {
  width: 100%;
}
 
  </style>
   
  
  
</head>


<body>
  <!--header-->
  <header id="site-header" class="fixed-top">
    <div class="container">
      <nav class="navbar navbar-expand-lg stroke">
        <a class="navbar-brand" href="index.html">
            <img src="assets/images/logo 2.png"  style="height:25px;" />
        </a> 
        <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
          data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
          aria-label="Toggle navigation">
          <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
          <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="Home.jsp">Home </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">Bookings</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="services.html">Payments</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="services.html">Contact Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.html">About Us</a>
              </li>
    
          </ul>
        </div>

        <!-- toggle switch for light and dark theme -->
        <div class="mobile-position">
          <nav class="navigation">
            <div class="theme-switch-wrapper">
              <label class="theme-switch" for="checkbox">
                <input type="checkbox" id="checkbox">
                <div class="mode-container">
                  <i class="gg-sun"></i>
                  <i class="gg-moon"></i>
                </div>
              </label>
            </div>
          </nav>
        </div>
        <!-- //toggle switch for light and dark theme -->



    </header>
        <section class="w3l-main-slider" id="home">
    <div class="banner-content">
      <div id="demo-1"
        data-zs-src='["assets/images/a1.jpg", "assets/images/a2.jpg","assets/images/a3.jpg", "assets/images/a4.jpg","assets/images/a5.jpg","assets/images/a6.jpg","assets/images/a7.png","assets/images/a8.jpg","assets/images/a9.jpg"]' 
        data-zs-overlay="dots">
        <div class="demo-inner-content">
          <div class="container">
            <div class="banner-infhny">
              <h4>You don't need to go far to find what matters.</h4>
              <h6 class="mb-3">Discover your next adventure</h6>
              <a href="UserLogin.jsp"><button class="custom-btn btn-6"><span>SIGN IN</span></button></a>
              <a href="UserRegistration.jsp"><button class="custom-btn btn-6"><span>SIGN UP</span></button></a>
              <div class="flex-wrap search-wthree-field mt-md-5 mt-4">
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
   
 
  <!-- //header -->
   

<section class="w3l-grids-3 py-5">
    <div class="container py-md-5">
      <div class="title-content text-left mb-lg-5 mb-4">
        <h3 class="sub-title">DIREX Tours</h3>
        <h4 class="hny-title">Start Your Journey</h4>
      </div>
      </div>
		

     
  

<p style="text-align: center;">&nbsp;</p>



<p>&nbsp;</p>



<p style="text-align: center;">&nbsp;</p>



<p>&nbsp;</p>


<br>


<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: 'Montserrat';}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<body>

<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:100%;min-width:100%" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="#food" onclick="w3_close()" class="w3-bar-item w3-button">Food</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">About</a>
</nav>

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-right w3-padding-16">Mail</div>
    <div class="w3-center w3-padding-16">My Food</div>
  </div>
</div>
  <div class="containerr">
  
  
  
  <div class="subject-card-header p-4">
    <a href="local.jsp" class="card_title p-lg-4d-block">
      <div class="row align-items-center">
      
        <div class="col-sm-5 subject-img">
          <img src="assets/images/a5.jpg" class="img-fluid" alt="">
        </div>
        <div class="col-sm-7 subject-content mt-sm-0 mt-4">
          <h4>Travel in SriLanka</h4>
          <p>For both local and foreign tourists</p>
          <div class="dst-btm">
            <h6 class="">Accommodation,Transportation and lots of facilities</h6><br>
            <span>You can customized your own package</span>
          </div>
          <p class="sub-para">Click here for more details</p>
        </div>
      </div>
    </a>

<br><br><br>
<br>
<div class="subject-card-header p-4">
    <a href="foriegn.jsp" class="card_title p-lg-4d-block">
      <div class="row align-items-center">
      
        <div class="col-sm-5 subject-img">
          <img src="assets/images/c11.jpg" class="img-fluid" alt="">
        </div>
        <div class="col-sm-7 subject-content mt-sm-0 mt-4">
          <h4>Travel in Aboard</h4>
          <p>For Local  tourists</p>
          <div class="dst-btm">
            <h6 class="">Accommodation and lots of facilities</h6><br>
            <span>You can select your own package</span>
          </div>
          <p class="sub-para">Click here for more details</p>
        </div>
      </div>
    </a>
  </div>
</div>

</div>

<br><br><br>
<div class="best-rooms py-5">
  <div class="container py-md-5">
      <div class="ban-content-inf row">
          <div class="maghny-gd-1 col-lg-6">
            <div class="maghny-grid">
              <figure class="effect-lily border-radius  m-0">
                  <img class="img-fluid" src="assets/images/g10.jpg" alt="" />
                  <figcaption>
                      <div>
                          <h4>3Days, 4 Nights</h4>
                          <p>From 1720$ </p>
                      </div>

                  </figcaption>
              </figure>
          </div>
          </div>
          <div class="maghny-gd-1 col-lg-6 mt-lg-0 mt-4">
              <div class="row">
                  <div class="maghny-gd-1 col-6">
                      <div class="maghny-grid">
                          <figure class="effect-lily border-radius">
                              <img class="img-fluid" src="assets/images/g9.jpg" alt="" />
                              <figcaption>
                                  <div>
                                      <h4>3Days, 4 Nights</h4>
                                      <p>From 1220$ </p>
                                  </div>

                              </figcaption>
                          </figure>
                      </div>
                  </div>
                  <div class="maghny-gd-1 col-6">
                      <div class="maghny-grid">
                          <figure class="effect-lily border-radius">
                              <img class="img-fluid" src="assets/images/g8.jpg" alt="" />
                              <figcaption>
                                  <div>
                                      <h4>3Days, 4 Nights</h4>
                                      <p>From 1620$ </p>
                                  </div>

                              </figcaption>
                          </figure>
                      </div>
                  </div>
                  <div class="maghny-gd-1 col-6 mt-4">
                      <div class="maghny-grid">
                          <figure class="effect-lily border-radius">
                              <img class="img-fluid" src="assets/images/g7.jpg" alt="" />
                              <figcaption>
                                  <div>
                                      <h4>3Days, 4 Nights</h4>
                                      <p>From 1820$ </p>
                                  </div>

                              </figcaption>
                          </figure>
                      </div>
                  </div>
                  <div class="maghny-gd-1 col-6 mt-4">
                      <div class="maghny-grid">
                          <figure class="effect-lily border-radius">
                              <img class="img-fluid" src="assets/images/g6.jpg" alt="" />
                              <figcaption>
                                  <div>
                                      <h4>3Days, 4 Nights</h4>
                                      <p>From 1520$ </p>
                                  </div>

                              </figcaption>
                          </figure>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>
<!-- !PAGE CONTENT! -->

  
  










  <footer>
    <!-- footer -->
    <section class="w3l-footer">
      <div class="w3l-footer-16-main py-5">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 column">
              <div class="row">
                <div class="col-md-4 column">
                  <h3>Company</h3>
                  <ul class="footer-gd-16">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="blog.html">Feedback</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                  </ul>
                </div>
                <div class="col-md-4 column mt-md-0 mt-4">
                  <h3>Contact Us</h3>
                  <ul class="footer-gd-16">
                    <li><b>Hotline</b> </li>
                    <li>+9411 2 404 333</li>
                    <li><b>DIREX Tours Head Office</b> </li>
                    <li>+9411 2 404 232   +9411 2 404 878</li>
                    <li><b>Address</b></li>
                    <li>No 65, Galle Road, Colombo 03.</li>
                  </ul>
                </div>
                <div class="col-md-4 column mt-md-0 mt-4">
                  <h3>About Us</h3>
                  <ul class="footer-gd-16">
                    <li>With DIREX Tours,
                         you can make a direct connection with some of the world’s most frequent travel guiders.
                          Our readers are actively researching and planning for your next trip, 
                          and come to us for travel ideas and inspiration.
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-12 column pl-lg-5 column4 mt-lg-0 mt-5">
              <h3>Newsletter </h3>
              <div class="end-column">
                <h4>Get latest updates and offers.</h4>
                <form action="#" class="subscribe" method="post">
                  <input type="email" name="email" placeholder="Email Address" required="">
                  <button type="submit">Submit</button>
                </form>
                <p>Sign up for our latest news & articles. We won’t give you spam mails.</p>
              </div>
            </div>
          </div>
          <div class="d-flex below-section justify-content-between align-items-center pt-4 mt-5">
            <div class="columns text-lg-left text-center">
              <p>&copy; 2021 DIREX Tours. All rights reserved. Design by DIREX </p>
            </div>
            <div class="columns-2 mt-lg-0 mt-3">
              <ul class="social">
                <li><a href="#facebook"><span class="fa fa-facebook" aria-hidden="true"></span></a>
                </li>
                <li><a href="#linkedin"><span class="fa fa-linkedin" aria-hidden="true"></span></a>
                </li>
                <li><a href="#twitter"><span class="fa fa-twitter" aria-hidden="true"></span></a>
                </li>
                <li><a href="#google"><span class="fa fa-google-plus" aria-hidden="true"></span></a>
                </li>
                <li><a href="#github"><span class="fa fa-github" aria-hidden="true"></span></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
  
      <!-- move top -->
      <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fa fa-angle-up"></span>
      </button>
      <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
          scrollFunction()
        };
  
        function scrollFunction() {
          if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("movetop").style.display = "block";
          } else {
            document.getElementById("movetop").style.display = "none";
          }
        }
  
        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
      </script>
      <!-- //move top -->
      <script>
        $(function () {
          $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
          })
        });
      </script>
    </section>
    <!-- //footer -->
  </footer>
  <!-- Template JavaScript -->
  <script src="assets/js/jquery-3.3.1.min.js"></script>
  <script src="assets/js/theme-change.js"></script>
  <!--/slider-js-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/modernizr-2.6.2.min.js"></script>
  <script src="assets/js/jquery.zoomslider.min.js"></script>
  <!--//slider-js-->
  <script src="assets/js/owl.carousel.js"></script>
  <!-- script for tesimonials carousel slider -->
  <script>
    $(document).ready(function () {
      $("#owl-demo1").owlCarousel({
        loop: true,
        margin: 20,
        nav: false,
        responsiveClass: true,
        responsive: {
          0: {
            items: 1,
            nav: false
          },
          736: {
            items: 1,
            nav: false
          },
          1000: {
            items: 1,
            nav: false,
            loop: true
          }
        }
      })
    })
  </script>
  <!-- //script for tesimonials carousel slider -->
  <!-- stats number counter-->
  <script src="assets/js/jquery.waypoints.min.js"></script>
  <script src="assets/js/jquery.countup.js"></script>
  <script>
    $('.counter').countUp();
  </script>
  <!-- //stats number counter -->

  <!--/MENU-JS-->
  <script>
    $(window).on("scroll", function () {
      var scroll = $(window).scrollTop();
      if (scroll >= 80) {
        $("#site-header").addClass("nav-fixed");
      } else {
        $("#site-header").removeClass("nav-fixed");
      }
    });
    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
      $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
      if ($(window).width() > 991) {
        $("header").removeClass("active");
      }
      $(window).on("resize", function () {
        if ($(window).width() > 991) {
          $("header").removeClass("active");
        }
      });
    });
  </script>
  <!--//MENU-JS-->

  <script src="assets/js/bootstrap.min.js"></script>

</body>

</html>