<?php require_once 'public/inc/header.php' ?>
<!-- Header Inner -->

<div class="header-inner">
	<div class="container">
		<div class="cat-nav-head">
			<div class="row">
				<div class="col-lg-3">
					<div class="all-category">
						<h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>CATEGORIES</h3>
						<ul class="main-category">
							<?php
							$qr = mysqli_query($conn, "SELECT * FROM `cat` WHERE id_parent = 0");
							while ($row_cat = mysqli_fetch_assoc($qr)) {
								$id = $row_cat['id'];
							?>
								<li><a href="cat.php?id=<?php echo $row_cat['id'] ?>"><?php echo $row_cat['name'] ?><i class="fa fa-angle-right" aria-hidden="true"></i></a>
									<ul class="sub-category">
										<?php
										$qr2 = mysqli_query($conn, "SELECT * FROM `cat` WHERE id_parent = $id");
										while ($row_cat2 = mysqli_fetch_assoc($qr2)) {
										?>
											<li><a href="cat.php?id=<?php echo $row_cat2['id'] ?>"><?php echo $row_cat2['name'] ?></a></li>
										<?php
										}
										?>
									</ul>
								</li>
							<?php
							}
							?>
						</ul>
					</div>
				</div>
				<div class="col-lg-9 col-12">
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

<div class="product-area most-popular section">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-title">
					<?php
					$id_cat = (isset($_GET['id'])) ? $_GET['id'] : '';
					$qr_cat = mysqli_query($conn, "SELECT * FROM cat WHERE id = $id_cat");
					$row_cat3 = mysqli_fetch_assoc($qr_cat);
					?>
					<h2><?php echo $row_cat3['name'] ?></h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<div class="owl-carousel popular-slider">
					<!-- Start Single Product -->
					<?php
					$id_cat = (isset($_GET['id'])) ? $_GET['id'] : '';
					$show_cat = mysqli_query($conn, "SELECT * FROM `products` WHERE id_cat = $id_cat");
					while ($row_show = mysqli_fetch_assoc($show_cat)) {
					?>
						<div class="single-product">
							<div class="product-img">
								<a href="product-detail.php?id=<?php echo $row_show['id']?>&id_cat=<?php echo $row_show['id_cat']?>">
									<img class="default-img" src="admin/upload/<?php echo $row_show['image'] ?>" alt="#">
									<img class="hover-img" src="admin/upload/<?php echo $row_show['image'] ?>" alt="#">
								</a>
								<div class="button-head">
									<div class="product-action-2">
										<input type="hidden" value="1" name="num" id="num">
										<a title="Add to cart" onclick="add_cart(<?php echo $row_show['id'] ?>)" href="javascript:void(0)">Add to cart</a>
									</div>
								</div>
							</div>
							<div class="product-content">
								<h3><a href="product-detail.php?id=<?php echo $row_show['id']?>&id_cat=<?php echo $row_show['id_cat']?>"><?php echo $row_show['name_product'] ?></a></h3>
								<div class="product-price">
									<h3 style="color : #FF9933">$ <?php echo $row_show['price'] ?></h3>
								</div>
							</div>
						</div>

					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End Most Popular Area -->

<?php require_once 'public/inc/footer.php' ?>