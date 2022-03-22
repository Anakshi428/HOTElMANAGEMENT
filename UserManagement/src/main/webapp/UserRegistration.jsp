<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sign Up</title>
    
    <!-- meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="keywords" content="Art Sign Up Form Responsive Widget, Audio and Video players, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, 
		Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"
    />
    <!-- /meta tags -->
    <!-- custom style sheet -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <!-- /custom style sheet -->
    <!-- fontawesome css -->
    <link href="assets/css/fontawesome-all.css" rel="stylesheet" />
    <!-- /fontawesome css -->
    <!-- google fonts-->
    <link href="assets/webfonts/fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- /google fonts-->
<link rel="stylesheet" type="text/css" href="assets/css/style-starter.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

<style>@font-face {
  font-family: 'FontAwesome';
  src: url('assets/webfonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('assets/webfonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('assets/webfonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('assets/webfonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('assets/webfonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('assets/webfonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
  }
  </style>

</head>


<body>
<jsp:include page="/WEB-INF/view//Header.jsp"></jsp:include>



    
    <h1 class="ml5">
  <span class="text-wrapper">
    <span class="line line1"></span>
    <span class="letters letters-left">You Deserve A vacation</span>
    
    <span class="letters letters-right">We Are Here To satisfy All Your Travel Needs.</span>
    <span class="line line2"></span>
  </span>
</h1>
     <script>anime.timeline({loop: true})
     .add({
    	    targets: '.ml5 .line',
    	    opacity: [0.5,1],
    	    scaleX: [0, 1],
    	    easing: "easeInOutExpo",
    	    duration: 700
    	  }).add({
    	    targets: '.ml5 .line',
    	    duration: 600,
    	    easing: "easeOutExpo",
    	    translateY: (el, i) => (-0.625 + 0.625*2*i) + "em"
    	  }).add({
    	    targets: '.ml5 .ampersand',
    	    opacity: [0,1],
    	    scaleY: [0.5, 1],
    	    easing: "easeOutExpo",
    	    duration: 600,
    	    offset: '-=600'
    	  }).add({
    	    targets: '.ml5 .letters-left',
    	    opacity: [0,1],
    	    translateX: ["0.5em", 0],
    	    easing: "easeOutExpo",
    	    duration: 600,
    	    offset: '-=300'
    	  }).add({
    	    targets: '.ml5 .letters-right',
    	    opacity: [0,1],
    	    translateX: ["-0.5em", 0],
    	    easing: "easeOutExpo",
    	    duration: 600,
    	    offset: '-=600'
    	  }).add({
    	    targets: '.ml5',
    	    opacity: 0,
    	    duration: 1000,
    	    easing: "easeOutExpo",
    	    delay: 1000
    	  });</script>
     
     
     
     
     
     <div style="background-image: url('assets/images/cover7.jpg');background-repeat:no-repeat; background-attachment: fixed;
  background-position: center center" ><br><br>
    <div class=" w3l-login-form">
        <h2>Sign Up</h2>
        <form action="insert" method="post">

            <div class=" w3l-form-group">
                <label>Name:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" placeholder="Name" required="required"  name="name"/>
                </div>
            </div>
            
            
            
            <div class=" w3l-form-group">
                <label>Email:</label>
                <div class="group">
                    <i class="fas fa-user"></i><code class="hljs xml">
                    <input type="email" class="form-control" placeholder="Email" required="required" name="email" />
               </code> </div>
            </div>
            
            
            
            <div class=" w3l-form-group">
                <label>Password:</label>
                <div class="group">
                    <i class="fas fa-unlock"></i>
                    
                    <input type="password" class="form-control" placeholder="Password" required="required" name="password"  required>
                </div>
            </div>
            
            
            <div class=" w3l-form-group">
                <label>Area Code:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" placeholder="Area Code" required="required" name="areacode"/>
                     
                </div>
            </div>
            
            <div class=" w3l-form-group">
                <label>Number:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" placeholder="Number" required="required" name="number"/>
                </div>
            </div>
            
            <div class=" w3l-form-group">
                <label>Traveler Type:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" placeholder="Traveller Type" required="required" name="type"/>
                </div>
            </div>
            
            <div class=" w3l-form-group">
                <label>Country:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" placeholder="Country" required="required" name="country"/>
                </div>
            </div>
            
            <div class=" w3l-form-group">
                <label>Passport Number:</label>
                <div class="group">
                    <i class="fas fa-user"></i>
                    <input type="text" class="form-control" placeholder="Passport Number" required="required" name="passport"/>
                </div>
            </div>
            
            
            
            
            
            <button type="submit">Sign up</button>
        </form>
        <br>  <br></div>
     <br>
    
    
    
    
    </div>
<jsp:include page="/WEB-INF/view//Footer.jsp"></jsp:include>
</body>

</html>