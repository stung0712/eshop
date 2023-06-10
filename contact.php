<?php $page = "CONTACT";?>
<?php require_once 'public/inc/header.php' ?>
<!-- Breadcrumbs -->
<div class="header-inner">
	<div class="container">
		<div class="cat-nav-head">
			<div class="row">
				<div class="col-12">
					<div class="menu-area">
						<!-- Main Menu -->
						<?php require_once 'public/inc/navbar.php' ?>
						<!--/ End Main Menu -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/ End Header Inner -->
</header>
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="bread-inner">
					<ul class="bread-list">
						<li><a href="index.html">Home<i class="ti-arrow-right"></i></a></li>
						<li class="active"><a href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Breadcrumbs -->

<!-- Start Contact -->
<section id="contact-us" class="contact-us section">
	<div class="container">
		<div class="contact-head">
			<div class="row">
				<div class="col-lg-8 col-12">
					<div class="form-main">
						<div class="title">
							<h3>Write us a message</h3>
						</div>
						<form method="POST" id="contact" action="javascript:void(0)">
							<div class="form-group">
								<label for="">Your Name</label>
								<input type="text" class="form-control" id="name" name="name">
							</div>
							<div class="form-group">
								<label for="">Email Address</label>
								<input type="email" class="form-control" id="email" name="email">
							</div>
							<div class="form-group">
								<label for="">Your Phone</label>
								<input type="text" class="form-control" id="phone" name="phone">
							</div>
							<div class="form-group">
								<textarea name="message" id="message" cols="20" rows="10" class="form-control"></textarea>
							</div>

							<button type="submit" onclick="contact()" name="submit" class="btn btn-primary">Send</button>
						</form>
					</div>
				</div>
				<div class="col-lg-4 col-12">
					<div class="single-head">
						<div class="single-info">
							<i class="fa fa-phone"></i>
							<h4 class="title">Call us Now:</h4>
							<ul>
								<li>+123 456-789-1120</li>
								<li>+522 672-452-1120</li>
							</ul>
						</div>
						<div class="single-info">
							<i class="fa fa-envelope-open"></i>
							<h4 class="title">Email:</h4>
							<ul>
								<li><a href="mailto:info@yourwebsite.com">info@yourwebsite.com</a></li>
								<li><a href="mailto:info@yourwebsite.com">support@yourwebsite.com</a></li>
							</ul>
						</div>
						<div class="single-info">
							<i class="fa fa-location-arrow"></i>
							<h4 class="title">Our Address:</h4>
							<ul>
								<li>KA-62/1, Travel Agency, 45 Grand Central Terminal, New York.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--/ End Contact -->
<script>
			function contact() {
				var phone = $("#phone").val();
				var message = $("#message").val();
				var name = $("#name").val();
				var email = $("#email").val();
		        $.ajax({
					url: 'addcheck.php',
					method: "POST",
					data: {
						phone:phone,name:name,message:message,email:email
					},
					success:function(data) {
                       alert("Contact successful !");
					   $("#contact")[0].reset();
					}
				})
			}
		
</script>
<!-- End Shop Newsletter -->

<?php require_once 'public/inc/footer.php' ?>