<?php if(isset($_SESSION['dangky'])){
    echo 'Xin chào :'.'<span style="color : red">'.$_SESSION['dangky'].'</span>';
  } ?>
</p>
<table style="width:100%;  text-align: center;border-collapse: collapse;" border="1">
  <tr style="text-align: center;">
    <th>ID</th>
    <th>Mã Hotel</th>
    <th>Tên Hotel</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Ngày nhận phòng</th>
    <th>Ngày trả phòng</th>
    <th>Giá phòng</th>
    <th>Thành tiền</th>
    <td>Quản lí</td>
  </tr>
  <?php 
    $id_khachhang=  $_SESSION['id_khachhang'];
	$sql_lietke_dp="SELECT tb_chitietdatphong.id_chitiet,tb_hotel.ID_Hotel,tb_hotel.Giaphong,tb_hotel.TenHotel,tb_chitietdatphong.Soluong,tb_hotel.Hinhanh,tb_chitietdatphong.StartDay,tb_chitietdatphong.EndDay FROM tb_datphong,tb_chitietdatphong,tb_hotel Where tb_datphong.id_khachhang = $id_khachhang AND tb_chitietdatphong.id_hotel=tb_hotel.ID_Hotel  AND tb_chitietdatphong.code =tb_datphong.Code GROUP BY tb_chitietdatphong.code,tb_hotel.ID_Hotel   ORDER BY tb_datphong.id_Don DESC";
	$query_lietke_dp= mysqli_query($mysqli,$sql_lietke_dp);

   ?>
   <?php 
$id = 0;
$tongtien=0;	
while ($row = mysqli_fetch_array($query_lietke_dp)){
		$first_date = strtotime($row['StartDay']);
		$second_date = strtotime($row['EndDay']);
		$datediff = abs($first_date - $second_date);
		$t = (floor($datediff / (60*60*24)) *$row['Giaphong']);
		$thanhtien = $row['Soluong']*$t;
  		$id++;
  		$tongtien+=$thanhtien;
 ?>
  <tr style="text-align: center;">
    <th><?php echo $id ?></th>
    <th><?php echo $row['ID_Hotel'] ?></th>
    <th><?php echo $row['TenHotel'] ?></th>
    <th><img src="admincp/modules/quanliHotel/Uploads/<?php echo $row['Hinhanh'] ?>" width="150px"></th>
    <th><?php echo $row['Soluong'] ?></th>
    <th><?php echo $row['StartDay'] ?></th>
    <th><?php echo $row['EndDay'] ?></th>
    <th><?php echo number_format($row['Giaphong'],0,',','.').'VNĐ' ?></th>
    <th> <?php echo number_format($thanhtien,0,',','.').'VNĐ' ?></th>
    <th><a href="index.php?quanli=thongtin&id=<?php echo $row['ID_Hotel'] ?>&update=<?php echo $row['id_chitiet'] ?>">Thay đổi</a></th>
  </tr>
  
  <?php } ?>
  <tr>  
  	<td>
  </tr>
   	<td colspan="8">Tổng tiền : <?php echo number_format($tongtien,0,',','.').'VNĐ' ?></td>
   </tr>
</table>