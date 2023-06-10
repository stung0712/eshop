<?php require_once '../template/inc/header.php' ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Categories</h1>
                    <br>
                </div><!-- /.col -->

            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    
                    <?php
                    if (isset($_POST['submit'])) {
                        $name_Cat = $_POST['name'];
                        $id_parent = $_POST['name_cat'];
                        $qr2 = mysqli_query($conn, "INSERT INTO `cat`( `name`, `id_parent`) VALUES ('$name_Cat','$id_parent')");
                        if ($qr2) {
                            echo '<script>window.location="admin/cat";</script>';
                        }
                    } 
                    ?>
                    <?php 
                    if(isset($_POST['submit2'])) {
                         $name  = $_POST['name'];
                         $qr3 = mysqli_query($conn, "INSERT INTO `cat`( `name`, `id_parent`) VALUES ('$name',0)");
                         if ($qr3) {
                             echo '<script>window.location="admin/cat";</script>';
                         }
                    }
                    ?>
                    <form action="" method="post">
                        
                        <div class="form-group">
                            <label for="">Category Name</label>
                            <input type="text" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <input type="submit"  name="name2"  name="submit" class="btn btn-success" value="Add">
                        </div>
                        <div class="form-group">
                            <label for="">Category Purpose</label>
                            <select name="name_cat" class="form-control">
                                <?php
                                $qr = mysqli_query($conn, "SELECT * FROM cat WHERE id_parent = 0");
                                while ($row_cat = mysqli_fetch_assoc($qr)) {
                                ?>
                                    <option value="<?php echo $row_cat['id'] ?>"><?php echo $row_cat['name'] ?></option>
                                <?php
                                }
                                ?>
                            </select>
                        </div>
           
                        <div class="form-group">
                            <input type="submit"  name="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </section>
    <!-- /.content -->
</div>

<?php require_once '../template/inc/footer.php' ?>