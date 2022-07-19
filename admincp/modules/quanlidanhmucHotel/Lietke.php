<?php 
	$sql_lietke_danhmucHotel="SELECT * FROM tb_danhmuchotel ORDER BY MaT ASC";
	$query_lietke_danhmucHotel= mysqli_query($mysqli,$sql_lietke_danhmucHotel);
 ?>
<p>Liệt kê danh mục Hotel</p>
<table border="1" width="100%" style="border-collapse: collapse;">
  <tr>
  	<th>ID Tỉnh</th>
    <th>Tên Tỉnh</th>
    <th>Mã Tỉnh</th>
    <th>Quản lí</th>
  </tr>
<?php 
$i = 0;
while ($row = mysqli_fetch_array($query_lietke_danhmucHotel )){
	$i++;
 ?>
  <tr>
  	<td> <?php echo $i ?></td>
    <td><?php echo $row['Name'] ?></td>
    <td><?php echo $row['MaT']?></td>
    <td>		
    		<a href="?action=quanlidanhmucHotel&query=sua&iddanhmuc= <?php echo $row['ID_Tinh'] ?>">Sửa</a> |<a href="modules/quanlidanhmucHotel/Xuli.php?iddanhmuc= <?php echo $row['ID_Tinh'] ?>">Xóa </a>
    </td>
  </tr>
<?php } ?>
</table>
