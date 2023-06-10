<?php 
 if(!$_SESSION['userAdmin']) {
     header('LOCATION: http://localhost:81/eshop/admin/');
 }
?>