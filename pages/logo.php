 <?php 
 ob_start();
 $te=1;
 $i=1;
          $sql_danhmuc = "SELECT *FROM tb_danhmuchotel ORDER BY ID_Tinh ASC ";
          $query_danhmuc =mysqli_query($mysqli,$sql_danhmuc);
         ?>
  <?php 
  if (isset($_GET['dangxuat'])&&$_GET['dangxuat']==1 ){
  	unset($_SESSION['dangky']);
  }
  if(isset($_GET['nlcong']))
  {	
  	$i=$i+$_GET['nlcong'];
  	
  }else if(isset($_GET['nltru'])) $i= $_GET['nltru']-1 ;
// trẻ em
  if(isset($_GET['tecong']))
  {	
  	$te=$te+$_GET['tecong'];
  ;
  }else if(isset($_GET['tetru'])) $te= $_GET['tetru']-1 ;
   ?>


<style type="text/css">
.bn{
	float: left;
	padding-right: 20px;
	text-align: center;
	width: 150px;
}
ul.dropdown {
    float: right;
    padding-right: 87px;
}
</style>

<nav class="gtco-nav" role="navigation">
		<div class="gtco-container">
			
			<div class="row">
				<div class="col-sm-4 col-xs-12">
					<div id="gtco-logo"><a href="index.php">Hotels VietNam <em>.com</em></a></div>
				</div>
				<div class="col-xs-8 text-right menu-1">
					<ul>
						<li>
							
							<li class="has-dropdown">
								<a href="index.php?quanli=khachsan">Khách sạn theo Tỉnh</a>
						<ul class="dropdown">
							<?php while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){ ?> 
								<li><a href="index.php?quanli=khachsantinh&id=<?php echo $row_danhmuc['ID_Tinh'] ?>"><?php echo $row_danhmuc['Name'] ?></a></li>
									<?php }?>
							</ul></li>
						
						</li>
						<?php
							if(isset($_SESSION['dangky'])) {
						 ?>
						 <li><a href="index.php?dangxuat=1">Đăng xuất</a></li>
						  <li><a href="index.php?quanli=doimatkhau">Đổi mật khẩu</a></li>
						  <li><a href="index.php?quanli=lichsudatphong">Lịch sử đặt phòng</a></li>
						<?php }else{ ?>
							<li><a href="index.php?quanli=Dangki">Đăng kí / Đăng nhập </a></li>
						<?php } ?>
						<li><a href="index.php?quanli=khachsandaluu">Đã lưu</a></li>
						
						<li><a href="index.php?quanli=Gioithieu">Giới thiệu</a></li>
					</ul>	
					<p>
						<form action="index.php?quanli=timkiem&nl=<?php echo $i ?>&te=<?php echo $te ?>" method="POST" style=" list-style-type: none">
								<li class="bn"><p style="color: orangered;">Nơi muốn đến</p >
									<input type="text" name="tukhoa" placeholder="Tìm khách sạn..." style="width: 120px"></li>
								
								<li class="bn" ><p style="color: orangered;">Ngày nhận phòng</p>
									<input type="date" data - date - inline- picker ="true" name="startdate"></li>
								<li class="bn"><p style="color: orangered;">Ngày trả phòng</p>
									<input type="date" data - date - inline- picker ="true" name="enddate" ></li>
								<li class="has-dropdown">
								<p class="bn" style="color: orangered;">Loại phòng</p>
								<input type="text" name="typeroom" value="Người lớn <?php echo $i ?> trẻ em <?php echo $te ?>" style="float: left;">
								<ul class="dropdown">
									<li style=" color: cornsilk;">Người lớn  <a href="index.php?nlcong=<?php echo $i ?>"> +</a><?php 
									  		echo $i;
									  		
									  	 ?><a href="index.php?nltru=<?php echo $i ?>"> - </a> </li>
									 <p><li style=" color: cornsilk;"	>Trẻ em <a href="index.php?tecong=<?php echo $te ?>"> +</a><?php 
									  		echo $te;
									  	 ?><a href="index.php?tetru=<?php echo $te ?>"> - </a> </li>  </p>	 
								</ul></li>
								
									<input type="submit" name="timkiem" value="Tìm kiếm"></li>
						</form>
					</p>
				</div>
			</div>
			
		</div>
	</nav>