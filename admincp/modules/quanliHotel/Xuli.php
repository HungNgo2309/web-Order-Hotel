<?php
include ('../../config/config.php');
$tenhotel = $_POST['tenhotel'];
$mahotel = $_POST['mahotel'];
$gia = $_POST['giaphong'];
// xử lí hình ảnh
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp= $_FILES['hinhanh']['tmp_name'];
$hinhanh = time().'_'.$hinhanh;
$vitri = $_POST['vitri'];
$soluong = $_POST['soluong'];
$noidung = $_POST['noidung'];
$tomtat = $_POST['tomtat'];
$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];

if(isset($_POST['themsp'])){
	$sql_them =	"INSERT INTO tb_hotel(TenHotel,Giaphong,Soluong,Noidung,Hinhanh,Tomtat,MaHotel,Tinhtrang,ID_Tinh,HTML_map) VALUE('".$tenhotel."','".$gia."','".$soluong."','".$noidung."','".$hinhanh."','".$tomtat."','".$mahotel."','".$tinhtrang."','".$danhmuc."','".$vitri."')";
	mysqli_query($mysqli, $sql_them);
	move_uploaded_file($hinhanh_tmp,'Uploads/'.$hinhanh);
	header('Location:../../index.php?action=quanliHotel&query=them');
} elseif (isset($_POST['suasp'])) {

	if ($hinhanh!=''){
		move_uploaded_file($hinhanh_tmp,'Uploads/'.$hinhanh);
	$sql_update ="UPDATE tb_hotel SET TenHotel='".$tenhotel."' ,Giaphong='".$gia."',Soluong='".$soluong."',Noidung='".$noidung."',Hinhanh='".$hinhanh."',Tomtat='".$tomtat."',MaHotel='".$mahotel."',Tinhtrang='".$tinhtrang."',ID_Tinh='".$danhmuc."',HTML_map='".$vitri."'   Where ID_Hotel='$_GET[idhotel]'";
	$sql = "SELECT* From tb_hotel where ID_Hotel = '$_GET[idhotel]' LIMIT 1";
			$query =mysqli_query($mysqli,$sql);
			while($row = mysqli_fetch_array($query))
				{
					unlink('Uploads/'.$row['Hinhanh']);
				}

} elseif ($hinhanh==''){
	$sql_update ="UPDATE tb_hotel SET TenHotel='".$tenhotel."' ,Giaphong='".$gia."',Soluong='".$soluong."',Noidung='".$noidung."',Tomtat='".$tomtat."',MaHotel='".$mahotel."',Tinhtrang='".$tinhtrang."',ID_Tinh='".$danhmuc."',HTML_map='".$vitri."'   Where ID_Hotel='$_GET[idhotel]'";
}
	mysqli_query($mysqli, $sql_update);
	header('Location:../../index.php?action=quanliHotel&query=them');
}else {
	$id =$_GET['idhotel'];
	$sql = "SELECT* From tb_hotel where ID_Hotel = '$id' LIMIT 1";
	$query =mysqli_query($mysqli,$sql);
	while($row = mysqli_fetch_array($query))
		{
			unlink('Uploads/'.$row['Hinhanh']);
		}
	$sql_xoa = "DELETE FROM tb_hotel Where ID_Hotel = '".$id."'";
	mysqli_query($mysqli, $sql_xoa);
	header('Location:../../index.php?action=quanliHotel&query=them');
}
?>
