
<p>Khách sạn đã lưu  
 
  <?php if(isset($_SESSION['dangky'])){
    echo 'Xin chào :'.'<span style="color : red">'.$_SESSION['dangky'].'</span>';
  } ?>
</p>

<?php if (isset($_SESSION['cart'])){

} ?>
<table style="width:100%;  text-align: center;border-collapse: collapse;" border="1">
  <tr style="text-align: center;">
    <th>ID</th>
    <th>Mã Hotel</th>
    <th>Tên Hotel</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Giá phòng</th>
    <th>Thành tiền</th>
    <th>Quản lý</th>
  </tr>
  <?php if(isset($_SESSION['cart'])){
  	$i =0;
  	$tongtien=0;
  	foreach ($_SESSION['cart'] as $cart_item) {
  		$thanhtien = $cart_item['Soluong']*$cart_item['Giaphong'];
  		$i++;
  		$tongtien+=$thanhtien;
   ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $cart_item['MaHotel'] ?></td>
    <td><?php echo $cart_item['TenHotel'] ?></td>
    <td><img src="admincp/modules/quanliHotel/Uploads/<?php echo $cart_item['Hinhanh'] ?>" width="150px"></td>
    <td>
    	<a href="pages/Themgiohang.php?cong=<?php echo $cart_item['id']	?>"><b> + </b></a>
    	<?php echo $cart_item['Soluong'] ?>
    	<a href="pages/Themgiohang.php?tru=<?php echo $cart_item['id']	?>"><b> - </b></a>	
    	</td>
    <td><?php echo number_format($cart_item['Giaphong'],0,',','.').'VNĐ' ?></td>
    <td><?php echo $thanhtien ?></td>
    <td><a href="pages/Themgiohang.php?xoa=<?php echo $cart_item['id']	?>">Xóa</a></td>
  </tr>
  <?php 
}?>
 <tr>
   	<td colspan="8">
   		<p style="float: left;">Tổng tiền : <?php echo number_format($tongtien,0,',','.').'VNĐ' ?></p>
   		<p style="float: right;"><a href="pages/Themgiohang.php?xoatatca=1">Xóa tất cả</a></p>
      <div style="clear: both"></div>
      <?php 
      if(isset($_SESSION['dangky'])){
       ?>
      
      <p><a href="index.php?quanli=thanhtoan">Đặt phòng</a></p>
    <?php }else{ ?>
      <p><a href="index.php?quanli=Dangki">Đăng ký để đặt phòng</a></p>
    <?php } ?>
   		</td>
   </tr>
   <?php
}else{
   ?>
   <tr>
   	<td colspan="8"><p>Hiện tại chưa có khách sạn nào đã lưu</p></td>
   </tr>
<?php } ?>
</table>

