<?php 
  $sql_sua_danhmucHotel="SELECT * FROM tb_danhmuchotel Where ID_Tinh = $_GET[iddanhmuc] LIMIT 1";
  $query_sua_danhmucHotel= mysqli_query($mysqli,$sql_sua_danhmucHotel);
 ?>
<p>Sửa danh mục Hotel</p>
<table border="1" width="50%" style="border-collapse: collapse;">
<form method="POST" action="modules/quanlidanhmucHotel/Xuli.php?iddanhmuc= <?php echo $_GET['iddanhmuc'] ?>">
  <?php 
  while ($dong = mysqli_fetch_array($query_sua_danhmucHotel)){
   ?>
    <td>Tên Tỉnh</td>
    <td><input type="text" value="<?php echo $dong['Name'] ?>" name="Tendanhmuc"></td>
  </tr>

  <tr>
    <td>Mã Tỉnh</td>
    <td><input type="text" value="<?php echo $dong['MaT'] ?>" name="matinh" ></td>
  </tr>

  <tr>
    <td colspan="2"><input type="submit" name="suadm" value="Sửa danh mục Hotel"></td>
  </tr>
<?php } ?>
 </form> 
</table>