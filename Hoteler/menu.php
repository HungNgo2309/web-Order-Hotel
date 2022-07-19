<?php 
	if (isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangnhap']);
		header('Location:login.php');
	}
 ?>
<ul class="Quanli_dm">
	<li><a href="index.php?action=quanliHotel&query=them">Quản lí  Hotel</a></li>
	<li><a href="index.php?action=chitietHotel&query=them">Chi tiết Hotel</a></li>
	<li><a href="index.php?dangxuat=1">Đăng xuất : Hoteler  <?php if(isset($_SESSION['dangnhap'])){ echo $_SESSION['dangnhap'];} ?></a></li>
	<li><a href="index.php?action=quanlidonhang&query=lietke">Quản lí đơn đặt phòng</a></li>
</ul>
