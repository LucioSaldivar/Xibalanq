<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Infinri Site</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Oswald:400,300,700|EB+Garamond" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Minimal
    Template URL: https://templatemag.com/minimal-bootstrap-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body data-spy="scroll" data-offset="0" data-target="#theMenu">

  <!-- Menu -->
  <nav class="menu" id="theMenu">
    <div class="menu-wrap">
      <h1 class="logo"><a href="index.html#home">Minimal</a></h1>
      <i class="fa fa-times-circle menu-close"></i>
      <a href="#home" class="smoothscroll">Home</a>
      <a href="#about" class="smoothscroll">About</a>
      <a href="#portfolio" class="smoothscroll">Portfolio</a>
      <a href="#contact" class="smoothscroll">Contact</a>
      <a href="#"><i class="fa fa-facebook"></i></a>
      <a href="#"><i class="fa fa-twitter"></i></a>
      <a href="#"><i class="fa fa-dribbble"></i></a>
      <a href="#"><i class="fa fa-envelope"></i></a>
    </div>

    <!-- Menu button -->
    <div id="menuToggle"><i class="fa fa-bars"></i></div>
  </nav>

  <!-- ========== HEADER SECTION ========== -->
  <section id="home" name="home"></section>
  <div id="headerwrap">
    <div class="container">
      <div class="logo">
        <img src="img/logo.png">
      </div>
      <br>
      <div class="row">
        <h2 style="color:white">"Once again...welcome to my house. Come freely. Go safely; and leave something of the happiness you bring."-- Bram Stoker, Dracula </h2>
        <br>
        <h3>Hello, I'm Lucio. I love software development.</h3>
        <br>
        <br>
        <div class="col-lg-6 col-lg-offset-3">
        </div>
      </div>
    </div>
    <!-- /container -->
  </div>
  <!-- /headerwrap -->

  <!-- ========== ABOUT SECTION ========== -->
  <section id="about" name="about"></section>
  <div id="f">
    <div class="container">
      <div class="row">
        <h3>ABOUT ME</h3>
        <p class="centered"><i class="icon icon-circle"></i><i class="icon icon-circle"></i><i class="icon icon-circle"></i></p>

        <!-- INTRO INFORMATIO-->
        <div class="col-lg-6 col-lg-offset-3">
          <p>I am a software developer based in Euless,Tx. I have a strong curiosity towards knowledge and adventures.
          After 9 years Serving in the Resturant Industry I finally found a passion that allows me to use my Critical Thinking, Attention to Detail, and Curiosity to its upmost potential.
          Currently enjoy working in C# but striving to be in a role of Computer Security Specialist, until then Practice, Practice, Practice!</p>        </div>
      </div>
    </div>
    <!-- /container -->
  </div>
  <!-- /f -->

  <!-- ========== CAROUSEL SECTION ========== -->
  <section id="portfolio" name="portfolio"></section>
  <div id="f">
    <div class="container">
      <div class="row centered">
        <h3>SOME PROJECTS</h3>
        <p class="centered"><i class="icon icon-circle"></i><i class="icon icon-circle"></i><i class="icon icon-circle"></i></p>

        <div class="col-lg-6 col-lg-offset-3">
        <div class="text-center">
  <h1>Reddit Crawler!</h1>
  <p>C# based Crawler that will crawl through Reddits sub-reddits, find the JSON file, Deserialize the file, and stores it in MySql to later on View.</p>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-3">
      <h3>Sub-Reddit List</h3>
      <p>Using Java Dynamic Web Project you're able to View,Add, and Delete the list of Sub-Reddits that will run on the Crawler.</p>
      <a href="${pageContext.request.contextPath}/SubRedditControllerServlet">Begin</a>
    </div>
    <div class="col-sm-3">
      <h3>Article List</h3>
      <p>Search and View all the articles the Crawler succefully acquired.</p>
      <a href="${pageContext.request.contextPath}/SpiderControllerServlet">Lets see</a>
    </div>
  </div>
</div>
          
        </div>
        <!-- col-lg-8 -->
      </div>
      <!-- row -->
    </div>
    <!-- container -->
  </div>
  <!-- f -->

  <!-- ========== CONTACT SECTION ========== -->
  <section id="contact" name="contact"></section>
  <div id="f">
    <div class="container">
      <div class="row">
        <h3>CONTACT ME</h3>
        <p class="centered"><i class="icon icon-circle"></i><i class="icon icon-circle"></i><i class="icon icon-circle"></i></p>

        <div class="col-lg-6 col-lg-offset-3">
          <p>1604 Woodpath Dr., 76039<br/>Euless, Tx.<br/>323-926-6970</p>
          <p>manuelsaldivar310@gmail.com</p>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6 col-md-offset-3">
          <form class="contact-form php-mail-form" role="form" action="contactform/contactform.php" method="POST">

            <div class="form-group">
              <label for="contact-name">Your Name</label>
              <input type="name" name="name" class="form-control" id="contact-name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" >
              <div class="validate"></div>
            </div>
            <div class="form-group">
              <label for="contact-email">Your Email</label>
              <input type="email" name="email" class="form-control" id="contact-email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
              <div class="validate"></div>
            </div>
            <div class="form-group">
              <label for="contact-subject">Subject</label>
              <input type="text" name="subject" class="form-control" id="contact-subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject">
              <div class="validate"></div>
            </div>

            <div class="form-group">
              <label for="contact-message">Your Message</label>
              <textarea class="form-control" name="message" id="contact-message" placeholder="Your Message" rows="5" data-rule="required" data-msg="Please write something for us"></textarea>
              <div class="validate"></div>
            </div>

            <div class="loading"></div>
            <div class="error-message"></div>
            <div class="sent-message">Your message has been sent. Thank you!</div>

            <div class="form-send">
              <button type="submit" class="btn btn-large">Send Message</button>
            </div>

          </form>

        </div>
      </div>
    </div>
  </div>

  <div id="copyrights">
    <div class="container">
      <p>
        &copy; Copyrights <strong>Minimal</strong>. All Rights Reserved
      </p>
      <div class="credits">
        <!--
          You are NOT allowed to delete the credit link to TemplateMag with free version.
          You can delete the credit link only if you bought the pro version.
          Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/minimal-bootstrap-template/
          Licensing information: https://templatemag.com/license/
        -->
        Created with Minimal template by <a href="https://templatemag.com/">TemplateMag</a>
      </div>
    </div>
  </div>
<script>GET /chat HTTP/1.1  
Host: example.com:8000  
Upgrade: websocket  
Connection: Upgrade  
Sec-WebSocket-Key: dGhlIHNhbXBsZSBub25jZQ==  
Sec-WebSocket-Version: 13 
</script>
  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/easing/easing.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
