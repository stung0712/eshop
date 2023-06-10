<?php require_once '../template/inc/header.php' ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Blog</h1>
                    <br>
                </div><!-- /.col -->

            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <?php 
      $id = (isset($_GET['id'])) ? $_GET['id'] : '';
      $qr = mysqli_query($conn,"SELECT * FROM blog WHERE id = $id");
      $row_blog = mysqli_fetch_assoc($qr);
      if(isset($_POST['submit'])) {
        $name = $_POST['name'];
        $content = $_POST['content'];
        $preview = $_POST['preview'];
        if(isset($_FILES['image']['name'])) {
            $filename = $_FILES['image']['name'];
            $tmp_name = $_FILES['image']['tmp_name'];
            $name_file = 'hinhanh-' . time() . $filename;
            $path = '../upload/' . $name_file;
        }
        if(!isset($name_file)) {
            $qr2 = mysqli_query($conn,"UPDATE `blog` SET `name`='$name',`content`='$content',`preview_text`='$preview' WHERE id = $id");

        } else {
            move_uploaded_file($tmp_name,$path);
            $qr2 = mysqli_query($conn,"UPDATE `blog` SET `name`='$name',`img`='$name_file',`content`='$content',`preview_text`='$preview' WHERE id = $id");
        }
        echo '<script>window.location="admin/blog";</script>';
      }
    ?>
    <!-- Main content -->
    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="">Name Blog</label>
                            <input type="text" value="<?php echo $row_blog['name']?>" class="form-control" name="name">
                        </div>
                        <div class="form-group">
                            <label for="">Image</label>
                            <input type="file"  class="form-control" name="image">
                        </div>
                        <div class="form-group">
                            <label for="">Preview</label>
                            <textarea name="preview" class="form-control ckeditor" id="" cols="5" rows="5"><?php echo $row_blog['preview_text']?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="">Content</label>
                            <textarea name="content" class="form-control ckeditor" id="" cols="10" rows="10"><?php echo $row_blog['content']?></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-success" value="Update">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>

<?php require_once '../template/inc/footer.php' ?>