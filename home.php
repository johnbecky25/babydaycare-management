<?php
include('includes/config.php');
session_start();
error_reporting(0);
?>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Baby Day Care Management System | Home Page</title>
      <!--meta tags -->
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         function hideURLbar() {
     	window.scrollTo(0, 1);
     }
  </script>
  <!--booststrap-->
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
  <!--//booststrap end-->
  <!-- font-awesome icons -->
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <!--stylesheets-->
  <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
  <!--//stylesheets-->
  <link href="//fonts.googleapis.com/css?family=Dosis:400,500,600,700" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Quicksand:400,500,700" rel="stylesheet">
  <style>
    @keyframes slidy {
0% { left: 0%; }
20% { left: 0%; }
25% { left: -100%; }
45% { left: -100%; }
50% { left: -200%; }
70% { left: -200%; }
75% { left: -300%; }
95% { left: -300%; }
100% { left: -400%; }
}

body { margin: 0; } 
div#slider { overflow: hidden; }
div#slider figure img { width: 20%; float: left; }
div#slider figure { 
  position: relative;
  width: 500%;
  margin: 0;
  left: 0;
  text-align: left;
  font-size: 0;
  animation: 30s slidy infinite; 
} 
  </style>
   </head>
   <body>
      <div class="main-top" id="home">
         <!-- header -->
         <?php include_once("includes/navbar.php");?>
         <!-- //header -->
         <!-- banner -->
         <div id="slider" style="overflow: hidden;">
            <figure style="position: relative; width: 500%; margin: 0; left: 0; text-align: left; font-size: 0; animation: 30s slidy infinite;">
               <img src="slider/ber.jpeg" alt style="width: 20%; float: left;">
               <img src="slider/baby2.jpg" alt style="width: 20%; float: left;">
               <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/ibiza.jpg" alt style="width: 20%; float: left;">
               <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/ankor-wat.jpg" alt style="width: 20%; float: left;">
               <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/austin-fireworks.jpg" alt style="width: 20%; float: left;">
            </figure>
         </div>
         <!--// banner -->
              <!-- about -->

     <!--//about -->	  

     <!--//about -->

     <!-- team -->

     <!--//team -->

     <!--//contact -->
     <!-- footer -->

     <!--//footer -->
  </div>
  </body>
</html>
