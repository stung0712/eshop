<nav class="navbar navbar-expand-lg">
    <div class="navbar-collapse">
        <div class="nav-inner">
            <ul class="nav main-menu menu navbar-nav">
                <li class="<?php if($page == "HOME") { echo "active";}?>"><a href="index.html">Home</a></li>
                <li  class="<?php if($page == "SHOP") { echo "active";}?>"><a href="shop-grid.html">All Product</a></li>
                <li  class="<?php if($page == "ORD") { echo "active";}?>"><a href="order.html">Orders</a></li>
                <li  class="<?php if($page == "CART") { echo "active";}?>"><a href="#">Shop<i class="ti-angle-down"></i><span class="new">New</span></a>
                    <ul class="dropdown">

                        <li><a href="cart.html">Cart</a></li>
                        <li><a href="checkout.html">Checkout</a></li>
                    </ul>
                </li>
                <li  class="<?php if($page == "BLOG") { echo "active";}?>"><a href="blog.html">Blog</a>

                </li>
                <li  class="<?php if($page == "CONTACT") { echo "active";}?>"><a href="contact.html">Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>