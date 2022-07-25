<div class="clear"></div>
<div class="main">
	<?php 
					if(isset($_GET['action']) && $_GET['query'])
					{
						$Tam = $_GET['action'];
						$query = $_GET['query'];
					}
					else
					{
						$Tam = '';
						$query='';
					}
					if ($Tam =='quanliHotel' && $query == 'them'){
						include ("quanlihotel/them.php");
						include ("quanliHotel/lietke.php");
					}elseif ($Tam =='quanliHotel' && $query == 'sua'){
						include ("quanlihotel/Sua.php");
						include ("quanliHotel/lietke.php");
					}elseif ($Tam =='quanlidonhang' && $query == 'lietke') {
						include ("quanlidonhang/lietke.php");
					}
					elseif ($Tam =='donhang'&& $query == 'xemdonhang') {
						include ("quanlidonhang/Xemdondat.php");
					}
					elseif ($Tam =='chitietHotel'&& $query == 'them') {
						include ("chitiet.php");
					}
					elseif ($Tam =='chitiet'&& $query == 'sua') {
						include ("suachitiet.php");
					}
					elseif ($Tam =='chitiet'&& $query == 'xoa') {
						include ("xuli.php");
					}

	?>
</div>
