<?php require_once '../template/inc/header.php' ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Products</h1>
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
                        $name = $_POST['name'];
                        $cat = $_POST['cat'];
                        $price = $_POST['price'];
                        $qty = $_POST['qty'];
                        $preview = $_POST['preview'];
                        $detail = $_POST['detail'];
                        $sp_hot = $_POST['sp_hot'];
                        if (isset($_FILES['image'])) {
                            $filename = $_FILES['image']['name'];
                            $tmp_name = $_FILES['image']['tmp_name'];
                            $name_file = 'hinhanh-' . time() . $filename;
                            $path = '../upload/' . $name_file;
                            move_uploaded_file($tmp_name, $path);
                        }
                        if (isset($_FILES['images']['name'])) {
                            $files = $_FILES['images'];
                            $filenames = $_FILES['images']['name'];
                            foreach ($filenames as $key => $value) {
                                move_uploaded_file($files['tmp_name'][$key], '../upload/' .'hinhanh-'. time() . $value);
                            }
                        }
                        $qr = mysqli_query($conn, "INSERT INTO `products`(`id_cat`, `name_product`, `image`, `price`, `qty`, `preview`, `detail`, `sp_hot`) VALUES ('$cat','$name','$name_file','$price','$qty','$preview','$detail','$sp_hot')");
                        $id_product = mysqli_insert_id($conn);
                        foreach($filenames as $key => $value) {
                            $name_files = 'hinhanh-'.time().$value;
                            mysqli_query($conn,"INSERT INTO img_products(id_sp,img) VALUES('$id_product','$name_files')");
                            echo '<script>window.location="admin/products";</script>';
                        }    
                    }
                    ?>
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="">Name</label>
                            <input type="text" class="form-control" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="">Category Name</label>
                            <select name="cat" class="form-control">
                                <option selected value="">All Categories</option>
                                <?php
                                $qr = mysqli_query($conn, "SELECT * FROM cat");
                                while ($row_cat = mysqli_fetch_assoc($qr)) {
                                ?>
                                    <option value="<?php echo $row_cat['id'] ?>"><?php echo $row_cat['name'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Image</label>
                            <input type="file" class="form-control" name="image">
                        </div>
                        <div class="form-group">
                            <label for="">Additional images </label>
                            <input type="file" class="form-control" name="images[]" multiple>
                        </div>
                        <div class="form-group">
                            <label for="">Price</label>
                            <input type="text" class="form-control" name="price">
                        </div>
                        <div class="form-group">
                            <label for="">Quantity</label>
                            <input type="text" class="form-control" name="qty">
                        </div>

                        <div class="form-group">
                            <label for="">Preview Text</label>
                            <textarea name="preview" class="form-control ckeditor" cols="5" rows="5"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="">Detail</label>
                            <textarea name="detail" class="form-control ckeditor" cols="10" rows="10"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="">Hot Products</label>
                            <select name="sp_hot" class="form-control">
                                <option value="1">Yes</option>
                                <option value="0">No</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </section>
    <!-- /.content -->
</div>

<?php require_once '../template/inc/footer.php' ?>