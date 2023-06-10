<?php require_once 'public/inc/header.php' ?>
<!-- Header Inner -->
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
<br>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h1>Login</h1>
      <br>
<?php 
     if(isset($_POST['submit'])){
       $email = $_POST['email'];
       $pwd = md5($_POST['password']);
       $qr = mysqli_query($conn,"SELECT * FROM customers WHERE email = '$email' AND password = '$pwd'");
       $check = mysqli_fetch_assoc($qr);
       if($check) {
         $_SESSION['customer'] = $check;
         if(isset($_GET['action'])) {
            $action = $_GET['action'];
            echo '<script>window.location="checkout.php";</script>';
         } else {
          echo '<script>window.location="index.php";</script>';
         }
         
       } else {
        echo "<script>alert('Email and Password is not match !');</script>";
       }
     }
?>
      <form action="" method="POST">
        <div class="form-group">
          <input type="email" class="form-control" name="email" placeholder="Enter email">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <button type="submit" name="submit" class="btn btn-primary">Login</button>
      </form>
    </div>

    <div class="col-sm-6">
      <h1>Register</h1>
      <br>
      <?php
      if (isset($_POST['submit_form'])) {
        $name = $_POST['name'];
        $email = $_POST['email_signup'];
        $pass = md5($_POST['pwd']);
        $qr_select = mysqli_query($conn, "SELECT * FROM customers WHERE email = '$email'");
        $check = mysqli_num_rows($qr_select);
        if ($check > 0) {
          echo "<script>alert('This email already exits !');</script>";
        } else {
          $qr_insert = mysqli_query($conn, "INSERT INTO `customers`(`name`, `email`, `password`) VALUES ('$name','$email','$pass')");
          echo "<script>alert('Register successfully !');</script>";
        }
      }
      ?>
      <form action="" method="POST">
        <div class="form-group">
          <input type="text" class="form-control" name="name" placeholder="Enter Your Name">
        </div>
        <div class="form-group">
          <input type="email" class="form-control" name="email_signup" placeholder="Enter email">
        </div>
        <div class="form-group">
          <input type="password" class="form-control" name="pwd" placeholder="Password">
        </div>
        <button type="submit" name="submit_form" class="btn btn-primary">Signup</button>
      </form>
    </div>
  </div>
</div>
<br>
<br>
<?php require_once 'public/inc/footer.php' ?>