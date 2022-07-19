<?php 
		$id =$_SESSION['dangnhap'];
		$sql_lk = "SELECT * FROM tb_hotel,tb_danhmuchotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND  ID_Hotel='".$id."' ORDER BY ID_Hotel ASC" ;
		$row_lk = mysqli_query($mysqli,$sql_lk);

 ?>
 <p>Hotel của bạn</p>
<table border="1" width="100%" style="border-collapse: collapse;">
  <tr>
  	<th>ID Hotel</th>
    <th>Tên Hotel</th>
    <th>Mã Hotel</th>
    <th>Giá Phòng / ngày</th>
    <th>Số lượng</th>
    <th>Thuộc tỉnh</th>
    <th>Hình ảnh</th>
    <th>Tóm tắt</th>
 
    <th>Tình trạng</th>
    <th>Quản lí</th>
  </tr>
<?php 
$i = 0;
while ($row = mysqli_fetch_array($row_lk)){
	$i++;
 ?>
  <tr>
  	<td> <?php echo $i ?></td>
    <td><?php echo $row['TenHotel']?></td>
    <td><?php echo $row['MaHotel']?></td>
    <td><?php echo $row['Giaphong']?></td>
    <td><?php echo $row['Soluong']?></td>
    <td><?php echo $row['Name']?></td>
    <td><img src="../admincp/modules/quanliHotel/Uploads/<?php echo $row['Hinhanh']?>" width='150px'> </td>
    <td><?php echo $row['Tomtat']?></td>

    <td><?php if( $row['Tinhtrang']==1){
      echo 'Kích hoạt';}
      else
         {echo 'Ẩn';}
    ?>
    </td>
    <td>		
    		<a href="?action=quanliHotel&query=sua&idhotel=<?php echo $row['ID_Hotel'] ?>">Sửa</a> |<a href="quanliHotel/Xuli.php?idhotel= <?php echo $row['ID_Hotel'] ?>">Xóa </a>
    </td>
  </tr>
<?php } ?>
</table>