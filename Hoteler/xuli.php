<p>Helo</p>
<?php
include ('../admincp/config/config.php');
if(isset($_POST['suachitiet'])){

$id = $_GET['idcthotel'];
$name = $_POST['name'];
$nl=$_POST['numberpeople'];
$te=$_POST['numberchild'];
$price = $_POST['price'];
$datein=$_POST['datein'];
$dateout=$_POST['dateout'];
echo $id;
echo $name;
echo $id;
echo $nl;
echo $te;
echo $price;
$sql_update ="UPDATE tb_chitiethotel SET TyperoomHotel='".$name."'' ,NumberPeople='".$nl."' ,NumberChild='".$te."' ,Price='".$price."' , DateCheckIn='".$datein."' , DateCheckOut='".$dateout."' Where ID_HotelCT ='".$id."' ";
	$query =mysqli_query($mysqli,$sql_update);
	header('Location:index.php?action=chitietHotel&query=them');
}
 ?>