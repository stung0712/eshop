<?php
require_once 'DB/dbConnect.php';
if (isset($_POST['id'])) {
    $id = $_POST['id'];
    $qr = mysqli_query($conn, "SELECT * FROM `order_detail` JOIN products ON order_detail.id_sp = products.id WHERE order_detail.id = $id");
}
?>
<table class="table">
    <thead class="thead-dark">
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name Product</th>
            <th scope="col">Price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Total</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $stt = 0;
        $sum = 0;
        while ($row = mysqli_fetch_assoc($qr)) {
            $stt++;
            $sum += $row['qty'] * $row['price'];
        ?>
            <tr>
                <th scope="row"><?php echo $stt ?></th>
                <td><?php echo $row['name_product'] ?></td>
                <td>$ <?php echo $row['price'] ?></td>
                <td><?php echo $row['qty'] ?></td>
                <td>$ <?php echo $row['price'] * $row['qty'] ?></td>
            </tr>
        <?php
        }
        ?>
        <tr>
            <td style="font-size: 20px;">Total Price</td>
            <td style="color:orange;font-size: 16px;"> $<?php echo $sum ?></td>
        </tr>

    </tbody>
</table>
<a href="order.php"><button class="btn btn-back"><--</button></a>
