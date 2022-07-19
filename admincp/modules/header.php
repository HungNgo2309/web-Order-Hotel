<?php 
	if (isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangnhap']);
		header('Location:login.php');
	}
 ?>
<ul class="Quanli_dm">
	<li><a href="index.php?action=quanlidanhmucHotel&query=them">Quản lí danh mục Hotel</a></li>
	<li><a href="index.php?action=quanliHotel&query=them">Quản lí  Hotel</a></li>
	<li><a href="index.php?action=quanlibaiviet&query=them">Quản lí bài viết</a></li>
	<li><a href="index.php?action=quanlidanhmucbaiviet&query=them">Quản lí danh mục bài viết</a></li>
	<li><a href="index.php?dangxuat=1">Đăng xuất : <?php if(isset($_SESSION['dangnhap'])){ echo $_SESSION['dangnhap'];} ?></a></li>
	<li><a href="index.php?action=quanlidonhang&query=lietke">Quản lí đơn đặt phòng</a></li>
</ul>