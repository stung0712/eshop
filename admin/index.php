<?php
session_start();
require_once '../DB/dbConnect.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE | Log in</title>
  <base href="http://localhost:81/eshop/">
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="admin/template/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="admin/template/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="admin/template/dist/css/adminlte.min.css">
</head>

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <a href="index.php"><b>Admin</b></a>
    </div>
    <?php
    if (isset($_POST['submit'])) {
      $email = $_POST['email'];
      $pwd = md5($_POST['password']);
      $qr = mysqli_query($conn, "SELECT * FROM `admin` WHERE email = '$email' AND password = '$pwd'");
      $infoUser = mysqli_fetch_assoc($qr);
      if ($infoUser) {
        $_SESSION['userAdmin'] = $infoUser;
        header('LOCATION: dashboard');
      } else {
        echo "<script>alert('Email And Password is not match !');</script>";
      }
    }
    ?>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <p class="login-box-msg">Sign in to start your session</p>
        <form method="post">
          <div class="input-group mb-3">
            <input type="text" class="form-control" name="email" placeholder="Email">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-envelope"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" name="password" class="form-control" placeholder="Password">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-12">
              <button type="submit" name="submit" class="btn btn-primary btn-block">Sign In</button>
            </div>
          </div>
        </form>
        <!-- /.social-auth-links -->
      </div>
      <!-- /.login-card-body -->
    </div>
  </div>
  <!-- /.login-box -->
  <!-- jQuery -->
  <script src="admin/template/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="admin/template/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="admin/template/dist/js/adminlte.min.js"></script>
</body>

</html>