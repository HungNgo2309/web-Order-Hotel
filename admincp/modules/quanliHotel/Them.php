<p>Thêm Hotel</p>
<table border="1" width="70%" style="border-collapse: collapse;">
<form method="POST" action="modules/quanliHotel/Xuli.php" enctype="multipart/form-data">
    <td>Tên Hotel</td>
    <td><input type="text" name="tenhotel"></td>
  </tr>

  <tr>
    <td>Mã Hotel</td>
    <td><input type="text" name="mahotel" ></td>
  </tr>

   <tr>
    <td>Giá phòng</td>
    <td><input type="text" name="giaphong" ></td>
  </tr>

 <tr>
    <td>Số lượng</td>
    <td><input type="text" name="soluong" ></td>
  </tr>

 <tr>
    <td>Nội dung</td>
    <td><textarea rows="10" name="noidung" style="resize:  none"></textarea></td>
  </tr>
<tr>
    <td>Tóm tắt</td>
    <td><textarea rows="10" name="tomtat" style="resize:  none"></textarea></td>
  </tr>
  <tr>
    <td>Vị trí : Code HTML MAP</td>
    <td><textarea rows="10" name="vitri" style="resize:  none"></textarea></td>
  </tr>
    <tr>
    <td>Hình ảnh</td>
    <td><input type="file" name="hinhanh" ></td>
  </tr>

<tr>
    <td>Danh mục Hotel (Tỉnh)</td>
    <td>
      <select name="danhmuc">
        <?php 
          $sql_danhmuc = "SELECT *FROM tb_danhmuchotel ORDER BY ID_Tinh ASC ";
          $query_danhmuc =mysqli_query($mysqli,$sql_danhmuc);
          while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
         ?>
        <option value="<?php echo $row_danhmuc['ID_Tinh']; ?>"><?php echo $row_danhmuc['Name']; ?></option>
        <?php } ?>
      </select>

    </td>
  </tr>

  <tr>
    <td>Tình trạng</td>
    <td>
      <select name="tinhtrang">
        <option value="1">Kích hoạt</option>
        <option value="0">Ẩn</option>
      </select>

    </td>
  </tr>

  <tr>
    <td colspan="2"><input type="submit" name="themsp" value="Thêm Hotel"></td>
  </tr>
 </form> 
</table>