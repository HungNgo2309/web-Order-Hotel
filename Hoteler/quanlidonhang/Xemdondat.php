
<?php 
	$sql_lietke_dp="SELECT * FROM tb_hotel,tb_chitietdatphong Where tb_hotel.ID_Hotel = tb_chitietdatphong.id_hotel AND tb_chitietdatphong.code = '$_GET[code]' ORDER BY tb_chitietdatphong.id_chitiet DESC";
	$query_lietke_dp= mysqli_query($mysqli,$sql_lietke_dp);
 
  
 ?>
<p>Xem chi tiết đơn đặt phòng</p>
<table border="1" width="100%" style="border-collapse: collapse;">
  <tr>
  	<th>ID </th>
    <th>Mã đơn đặt phòng</th>
    <th>Tên Hotel</th>
    <th>Số lượng phòng</th>
    <th>Ngày nhận phòng</th>
    <th>Ngày trả phòng</th>
    <th>Đơn giá</th>
    <th>Thành tiền</th>
  </tr>
<?php 
$i = 0;
while ($row = mysqli_fetch_array($query_lietke_dp)){
	$i++;
 ?>
  <tr>
  	<td> <?php echo $i ?></td>
    <td><?php echo $row['code']?></td>
    <td><?php echo $row['TenHotel']?></td>
    <td><?php echo $row['Soluong']?></td>
    <td><?php echo $row['StartDay']?></td>
    <td><?php echo $row['EndDay']?></td>
    <td><?php echo number_format($row['Giaphong'],0,',','.').'VNĐ'?></td>
    
   <td><?php
   		$first_date = strtotime($row['StartDay']);
		$second_date = strtotime($row['EndDay']);
		$datediff = abs($first_date - $second_date);
		echo number_format(floor($datediff / (60*60*24)) *$row['Giaphong'],0,',','.').'VNĐ' ;?>
  </tr>
<?php } ?>
</table>
