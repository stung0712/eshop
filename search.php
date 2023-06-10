<?php
require_once 'DB/dbConnect.php';
if (isset($_POST['name'])) {
    $name = $_POST['name'];
    $qr = mysqli_query($conn, "SELECT * FROM products WHERE name_product LIKE '%$name%'");
    if (mysqli_num_rows($qr)) {
        while ($row_pr = mysqli_fetch_assoc($qr)) {
?>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="single-product">
                    <div class="product-img">
                        <a href="product-detail.php?id=<?php echo $row_pr['id'] ?>&id_cat=<?php echo $row_pr['id_cat'] ?>">
                            <img class="default-img" src="admin/upload/<?php echo $row_pr['image'] ?>" alt="#">
                            <img class="hover-img" src="admin/upload/<?php echo $row_pr['image'] ?>" alt="#">
                        </a>
                        <div class="button-head">
                            <div class="product-action">
                                <a data-toggle="modal" data-target="#<?php echo $id ?>" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                            </div>
                            <div class="product-action-2">
                                <input type="hidden" value="1" id="num" name="num">
                                <a title="Add to cart" href="javascript:void(0)" onclick="add_cart(<?php echo $row_pr['id'] ?>)">Add to cart</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-content">
                        <h3><a href="product-details.php?id=<?php echo $row_pr['id'] ?>&id_cat=<?php echo $row_pr['id_cat'] ?>"><?php echo $row_pr['name_product'] ?></a></h3>
                        <div class="product-price">
                            <span>$ <?php echo $row_pr['price'] ?></span>
                        </div>
                    </div>
                </div>
            </div>
<?php
        }
    }
}
?>