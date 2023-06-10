<?php
session_start();
require_once 'DB/dbConnect.php';
require_once 'DB//utf8tolatintutil.php';
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<!-- Meta Tag -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name='copyright' content=''>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title Tag  -->
	<title>EShop Giày thể thao</title>
	<!-- Favicon -->
	<link rel="icon" type="image/png" href="images/favicon.png">
	<!-- Web Font -->
	<base href="http://localhost:81/eshop/">
	<link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

	<!-- StyleSheet -->

	<!-- Bootstrap -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="public/css/bootstrap.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="public/css/magnific-popup.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="public/css/font-awesome.css">
	<!-- Fancybox -->
	<link rel="stylesheet" href="public/css/jquery.fancybox.min.css">
	<!-- Themify Icons -->
	<link rel="stylesheet" href="public/css/themify-icons.css">
	<!-- Nice Select CSS -->
	<link rel="stylesheet" href="public/css/niceselect.css">
	<!-- Animate CSS -->
	<link rel="stylesheet" href="public/css/animate.css">
	<!-- Flex Slider CSS -->
	<link rel="stylesheet" href="public/css/flex-slider.min.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="public/css/owl-carousel.css">
	<!-- Slicknav -->
	<link rel="stylesheet" href="public/css/slicknav.min.css">

	<!-- Eshop StyleSheet -->
	<link rel="stylesheet" href="public/css/reset.css">
	<link rel="stylesheet" href="public/style.css">
	<link rel="stylesheet" href="public/css/responsive.css">



</head>

<body class="js">

	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span>
				<span></span>
			</div>
		</div>
	</div>
	<!-- End Preloader -->


	<!-- Header -->
	<header class="header shop">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-12">
						<!-- Top Left -->
						<div class="top-left">
							<ul class="list-main">
								<li><i class="ti-headphone-alt"></i>+123456789</li>
								<li><i class="ti-email"></i> stung0712@gmail.com</li>
							</ul>
						</div>
						<!--/ End Top Left -->
					</div>
					<div class="col-lg-8 col-md-12 col-12">
						<!-- Top Right -->
						<div class="right-content">
							<ul class="list-main">
								<?php
								if (isset($_SESSION['customer'])) {
									$name = $_SESSION['customer']['name'];

								?>
									<li><i class="ti-user"> </i><?php echo $name ?> </li>
									<li><i class="ti-power-off"></i><a href="logout.php">Logout</a></li>
								<?php
								} else {
								?>
									<li><i class="ti-user"></i> <a href="#">My Account</a></li>
									<li><i class="ti-power-off"></i><a href="login.html">Login</a></li>
								<?php
								}
								?>
							</ul>
						</div>
						<!-- End Top Right -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<div class="middle-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-12">
						<!-- Logo -->
						<div class="logo">
							<a href="index.html"><img src="public/images/logo.png" alt="logo"></a>
						</div>
						<!--/ End Logo -->
						<!-- Search Form -->
						<div class="search-top">
							<div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
							<!-- Search Form -->
							<div class="search-top">
								<form class="search-form">
									<input type="text" placeholder="Search here..." name="search">
									<button value="search" type="submit"><i class="ti-search"></i></button>
								</form>
							</div>
							<!--/ End Search Form -->
						</div>
						<!--/ End Search Form -->
						<div class="mobile-nav"></div>
					</div>
					<div class="col-lg-8 col-md-7 col-12">
						<div class="search-bar-top">
							<div class="search-bar">
								<input name="search" id="search" placeholder="Search Products Here....." type="search">
							</div>
						</div>
					</div>
					<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					<script>
						$(document).ready(function() {
							$("#search").keypress(function() {
								$.ajax({
									type: "POST",
									url: 'search.php',
									data: {
										name: $("#search").val(),
									},
									success: function(data) {
										$("#load").html(data);
									}
								})
							});
						})
					</script>
					<div class="col-lg-2 col-md-3 col-12">
						<div class="right-bar">
							<!-- Search Form -->
							<div class="sinlge-bar">
								<a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
							</div>
							<div class="sinlge-bar">
								<a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
							</div>
							<?php
							$number = 0;
							if (isset($_SESSION['cart'])) {
								foreach ($_SESSION['cart'] as $key => $value) {
									$number++;
								}
							}
							?>
							<div class="sinlge-bar shopping">
								<a href="cart.html" class="single-icon"><i class="ti-bag"></i> <span class="total-count" id="numberCart"><?php echo $number ?></span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script>
			function add_cart(id) {
				var num = $('#num').val();
				$.post("process_cart.php", {
					'id': id,
					'num': num
				}, function(data) {
					alert('Already added to cart');
					$("#numberCart").text(data);
				});
			}
		</script>