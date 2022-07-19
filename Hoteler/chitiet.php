<?php 
  $id_hotel= $_SESSION['dangnhap'];
  $sql_lietke_dp="SELECT * FROM tb_hotel,tb_chitiethotel Where tb_hotel.ID_Hotel=tb_chitiethotel.ID_Hotel AND tb_hotel.ID_Hotel ='".$id_hotel."' ";
  $query_lietke_dp= mysqli_query($mysqli,$sql_lietke_dp);

 ?>
<table border="1" width="100%" style="border-collapse: collapse;">
  <tr>
  	<th>ID </th>
    <th>Tên loại phòng</th>
    <th>Số lượng người lớn</th>
    <th>Số lượng trẻ em</th>
    <th>Giá phòng</th>
    <th>Ngày nhận phòng</th>
    <th>Ngày trả phòng</th>
    <th>Quản lí</th>
  </tr>
  <?php 
$i = 0;
while ($row = mysqli_fetch_array($query_lietke_dp)){
  $i++;
 ?>
  <tr>
    <td> <?php echo $i ?></td>
    <td><?php echo $row['TyperoomHotel']?></td>
    <td><?php echo $row['NumberPeople']?></td>
    <td><?php echo $row['NumberChild']?></td>
    <td><?php echo $row['Price']?></td>
    <td><?php echo $row['DateCheckIn']?></td>
    <td><?php echo $row['DateCheckOut']?></td>
    <td>    
        <a href="index.php?action=chitiet&query=sua&code=<?php echo $row['ID_HotelCT'] ?>">Sửa</a>
    </td>
  </tr>
<?php } ?>
</table>