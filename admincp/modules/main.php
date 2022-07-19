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
					if($Tam =='quanlidanhmucHotel' && $query == 'them')
						{ include ("modules/quanlidanhmucHotel/Them.php");
						  include ("modules/quanlidanhmucHotel/Lietke.php");
						}
					elseif ($Tam =='quanlidanhmucHotel' && $query == 'sua') {
						include ("modules/quanlidanhmucHotel/Sua.php");
					}elseif ($Tam =='quanliHotel' && $query == 'them'){
						include ("modules/quanliHotel/Them.php");
						include ("modules/quanliHotel/Lietke.php");
					}elseif ($Tam =='quanliHotel' && $query == 'sua') {
						include ("modules/quanliHotel/Sua.php");
					}
					elseif ($Tam =='quanlidonhang' && $query == 'lietke') {
						include ("modules/quanlidonhang/lietke.php");
					}
					elseif ($Tam =='donhang'&& $query == 'xemdonhang') {
						include ("modules/quanlidonhang/Xemdondat.php");
					}
					else
						{ include ("modules/dashboard.php");}
	?>
</div>
