<p>Helo</p>
<?php
include ('../admincp/config/config.php');
if(isset($_POST['suachitiet'])){


$name = $_POST['name'];
$nl=$_POST['numberpeople'];
$te=$_POST['numberchild'];
$price = $_POST['price'];
$datein=$_POST['datein'];
$dateout=$_POST['dateout'];

echo $name;
echo $nl;
echo $te;
echo $price;
$sql_update ="UPDATE tb_chitiethotel SET TyperoomHotel='".$name."' ,NumberPeople='".$nl."' ,NumberChild='".$te."' ,Price='".$price."' , DateCheckIn='".$datein."' , DateCheckOut='".$dateout."' Where ID_HotelCT='$_GET[idcthotel]'";

	$query =mysqli_query($mysqli,$sql_update);
	if($query)
	{
			header('Location:index.php?action=chitietHotel&query=them');
	}

}elseif (isset($_POST['xoa'])) {
	$sql_update = "DELETE FROM tb_chitiethotel Where ID_HotelCT='$_GET[idcthotel]'";
	$query =mysqli_query($mysqli,$sql_update);
	if($query)
	{
			header('Location:index.php?action=chitietHotel&query=them');
	}
}if (isset($_POST['them'])) {
	$name = $_POST['typename'];
	$id_hotel = $_GET['them'];
	$nl=$_POST['numberpeople'];
	$te=$_POST['numberchild'];
	$price = $_POST['price'];
	$datein=$_POST['datein'];
	$dateout=$_POST['dateout'];
	echo $nl;
	$sql_them="INSERT INTO tb_chitiethotel(TyperoomHotel,NumberPeople,NumberChild,DateCheckIn,DateCheckOut,Price,ID_Hotel) VALUE('".$name."','".$nl."','".$te."','".$datein."','".$dateout."','".$price."','".$id_hotel."')";
	$query =mysqli_query($mysqli,$sql_them);
	if($query)
	{
			header('Location:index.php?action=chitietHotel&query=them');
	}
}
 ?>