<?php 
  $id_hotelCT= $_GET['code'];
  $sql_lietke_dp="SELECT * FROM tb_chitiethotel Where ID_HotelCT ='".$id_hotelCT."' ";
  $query_lietke_dp= mysqli_query($mysqli,$sql_lietke_dp);

 ?>
 <table border="1" width="50%" style="border-collapse: collapse;">
  <?php 
while ($row = mysqli_fetch_array($query_lietke_dp)){
 ?>
<form  method="POST" action="xuli.php?idcthotel=<?php echo $row['ID_HotelCT'] ?>" enctype="multipart/form-data">
  <tr>
    <td>Tên loại phòng</td>
    <td><input type="text" name="name" value="<?php echo $row['TyperoomHotel'] ?>"></td>
  </tr>  
  <tr>
    <td>Số lượng người lớn</td>
    <td><input type="text" name="numberpeople" value="<?php echo $row['NumberPeople'] ?>"></td>
  </tr>  
  <tr>
    <td>Số lượng trẻ em</td>
    <td><input type="text" name="numberchild" value="<?php echo $row['NumberChild'] ?>"></td>
  </tr> 
  <tr>
    <td>Giá phòng</td>
    <td><input type="text" name="price" value="<?php echo $row['Price'] ?>"></td>
  </tr> 
  <tr>
    <td>Ngày nhận phòng</td>
    <td><input type="date" name="datein" value="<?php echo $row['DateCheckIn'] ?>"></td>
  </tr> 
  <tr>
    <td>Ngày trả  phòng</td>
    <td><input type="date" name="dateout" value="<?php echo $row['DateCheckOut'] ?>"></td>
  </tr> 
   <tr>
    <td colspan="2"><input type="submit" name="suachitiet" value="Sửa"></td>
  </tr>
</form><?php } ?>
</table>