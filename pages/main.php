	<div class="gtco-section">
		<div class="gtco-container">
				<?php 
					
					if(isset($_GET['quanli']))
					{
						$Tam =$_GET['quanli'];
						$_SESSION['quanli'] = $_GET['quanli'];
					}
					else
					{
						$Tam ='';
						
					}
					if($Tam =='khachsantinh')
						{ include ("hotelmain.php");}
					else if($Tam == 'Dangki')
						{include ("Dangky.php");}
					else if($Tam == 'Gioithieu')
						{include ("info/info.php");}
					else if($Tam == 'hotel')
						{include ("ChitietHotel.php");}
					else if($Tam == 'thanhtoan')
						{include ("thanhtoan.php");}
					else if($Tam == 'dangnhap')
						{include ("dangnhap.php");}
					else if($Tam == 'timkiem')
						{include ("timkiem.php");}
					else if($Tam == 'doimatkhau')
						{include ("doimatkhau.php");}
					else if($Tam == 'datphong')
						{include ("Datphong.php");}
					else if($Tam == 'khachsandaluu')
						{include ("Daluu.php");}
					else if($Tam == 'lichsudatphong')
						{include ("lichsu.php");}
					else include ("Tinh/index.php");
				 ?>
		</div>
	</div>
