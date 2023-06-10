<?php
session_start();
require_once '../../DB/dbConnect.php';
require_once '../../DB/checkUser.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE | Dashboard</title>
    <base href="http://localhost:81/eshop/">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="admin/template/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="admin/template/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="admin/template/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="admin/template/plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="admin/template/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="admin/template/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="admin/template/plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="admin/template/plugins/summernote/summernote-bs4.min.css">
    <script src="https://cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="admin/template/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
        </div>
        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index.php" class="brand-link">
                <img src="admin/template/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">AdminLTE </span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="admin/template/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <?php
                        if (isset($_SESSION['userAdmin'])) {
                            $name = $_SESSION['userAdmin']['name'];

                        ?>
                            <a href="#" class="d-block"><?php echo $name ?></a>

                        <?php
                        }
                        ?>
                    </div>
                    <div class="logout">
                        <a href="admin/logout.php" class="btn btn-danger">logout</a>
                    </div>
                </div>

                <!-- SidebarSearch Form -->
                <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        <li class="nav-item menu-open">
                            <a href="admin/dashboard" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <?php
                            if (isset($_SESSION['userAdmin']) && $_SESSION['userAdmin']['role'] == 1) {


                            ?>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="admin/dashboard" class="nav-link <?php if ($page == "DB") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Home</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/contacts" class="nav-link <?php if ($page == "CONTACT") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Contact</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/userAdmin" class="nav-link <?php if ($page == "USER") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>User</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/cat" class="nav-link <?php if ($page == "CAT") {
                                                                                echo 'active';
                                                                            } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Categories</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/products" class="nav-link <?php if ($page == "PR") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Products</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/order" class="nav-link <?php if ($page == "OR") {
                                                                                    echo 'active';
                                                                                } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Order</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/blog" class="nav-link <?php if ($page == "BL") {
                                                                                    echo 'active';
                                                                                } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Blog</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/statistical" class="nav-link <?php if ($page == "ST") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Statistical</p>
                                        </a>
                                    </li>
                                </ul>
                            <?php
                            } else {




                            ?>

                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="admin/dashboard" class="nav-link <?php if ($page == "DB") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Home</p>
                                        </a>
                                    </li>
                                   
                                    <li class="nav-item">
                                        <a href="admin/cat" class="nav-link <?php if ($page == "CAT") {
                                                                                echo 'active';
                                                                            } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Categories</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/products" class="nav-link <?php if ($page == "PR") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Products</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/order" class="nav-link <?php if ($page == "OR") {
                                                                                    echo 'active';
                                                                                } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Order</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="admin/contacts" class="nav-link <?php if ($page == "CONTACT") {
                                                                                        echo 'active';
                                                                                    } ?>">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Contact</p>
                                        </a>
                                    </li>

                                
                                </ul>
                            <?php

                            } ?>
                        </li>

                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>