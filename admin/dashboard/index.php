<?php $page = 'DB'?>
<?php require_once '../template/inc/header.php';
?>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <a href=""><<</a>
                        </div><!-- /.col -->
                         
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="col-lg-3 col-6">
                            <!-- small box -->
                            <div class="small-box bg-info">
                                <div class="inner">
                                <?php 
                                 $qr = mysqli_query($conn,"SELECT * FROM `order`");
                                 $row_or = mysqli_num_rows($qr);
                                ?>
                                    <h3><?php echo $row_or?></h3>
                                    <p>New Orders</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-bag"></i>
                                </div>
                                <a href="admin/order" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-6">
                            <!-- small box -->
                            <div class="small-box bg-success">
                                <div class="inner">
                                <?php 
                                 $qr1 = mysqli_query($conn,"SELECT * FROM `products`");
                                 $row_or2 = mysqli_num_rows($qr1);
                                ?>
                                    <h3><?php echo $row_or2?></h3>

                                    <p>Available Products</p>
                                </div>
                                <div class="icon">
                                    <i class="fab fa-product-hunt"></i>
                                </div>
                                <a href="admin/products" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-6">
                            <!-- small box -->
                            <div class="small-box bg-warning">
                                <div class="inner">
                                <?php 
                                 $qr2 = mysqli_query($conn,"SELECT * FROM `admin`");
                                 $row_or3 = mysqli_num_rows($qr2);
                                ?>
                                    <h3><?php echo $row_or3?></h3>

                                    <p>User Registrations</p>
                                </div>
                                <div class="icon">
                                    <i class="ion ion-person-add"></i>
                                </div>
                                <a href="admin/userAdmin" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-6">
                            <!-- small box -->
                            <div class="small-box bg-danger">
                                <div class="inner">
                                <?php 
                                 $qr3 = mysqli_query($conn,"SELECT * FROM `blog`");
                                 $row_or4 = mysqli_num_rows($qr3);
                                ?> 
                                    <h3><?php echo $row_or4?></h3>

                                    <p>Blog</p>
                                </div>
                                <div class="icon">
                                    <i class="fas fa-blog"></i>
                                </div>
                                <a href="admin/blog" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                        <!-- ./col -->
                    </div>
                    <!-- /.row -->

                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <?php require_once '../template/inc/footer.php' ?>