<?php
include ('../../config/config.php');
$Tentinh = $_POST['Tendanhmuc'];
$Matinh = $_POST['matinh'];
if(isset($_POST['themdm'])){
	$sql_them =	"INSERT INTO tb_danhmuchotel(Name,MaT) VALUE('".$Tentinh."','".$Matinh."')"	;
	mysqli_query($mysqli, $sql_them);
	header('Location:../../index.php?action=quanlidanhmucHotel&query=them');
} elseif (isset($_POST['suadm'])) {
	$sql_update ="UPDATE tb_danhmuchotel SET Name='".$Tentinh."' ,MaT='".$Matinh."'Where ID_Tinh='$_GET[iddanhmuc]'";
	mysqli_query($mysqli, $sql_update);
	header('Location:../../index.php?action=quanlidanhmucHotel&query=them');
}else {
	$id =$_GET['iddanhmuc'];
	$sql_xoa = "DELETE FROM tb_danhmuchotel Where ID_Tinh = '".$id."'";
	mysqli_query($mysqli, $sql_xoa);
	header('Location:../../index.php?action=quanlidanhmucHotel&query=them');
}
?>
