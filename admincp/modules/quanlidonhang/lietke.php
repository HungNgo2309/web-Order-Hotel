<?php 
	$sql_lietke_dp="SELECT * FROM tb_datphong,tb_khachhang Where tb_datphong.id_khachhang = tb_khachhang.ID_Khachhang ORDER BY tb_datphong.id_Don DESC";
	$query_lietke_dp= mysqli_query($mysqli,$sql_lietke_dp);
 ?>
<p>Các đơn đặt phòng</p>
<table border="1" width="100%" style="border-collapse: collapse;">
  <tr>
  	<th>ID </th>
    <th>Mã đơn đặt phòng</th>
    <th>Tên khách hàng</th>
    <th>Địa chỉ</th>
    <th>Email</th>
    <th>Số điện thoại</th>
    <th>Tình trạng</th>
    <th>Quản lí</th>
  </tr>
<?php 
$i = 0;
while ($row = mysqli_fetch_array($query_lietke_dp)){
	$i++;
 ?>
  <tr>
  	<td> <?php echo $i ?></td>
    <td><?php echo $row['Code']?></td>
    <td><?php echo $row['Tenkhachhang']?></td>
    <td><?php echo $row['Diachi']?></td>
    <td><?php echo $row['Email']?></td>
    <td><?php echo $row['SDT']?></td>
    <td><?php if($row['Status']==1){
    				echo '<a href="modules/quanlidonhang/Xuli.php?code='.$row['Code'].'">Đơn đặt mới</a>';
    			}else
    				echo 'Đã xem';
     ?></td>
    </td>
    <td>		
    		<a href="index.php?action=donhang&query=xemdonhang&code=<?php echo $row['Code'] ?>">Xem đơn đặt phòng</a>
    </td>
  </tr>
<?php } ?>
</table>
