<?php 

  $sql_sua_Hotel="SELECT * FROM tb_hotel Where ID_Hotel = '$_GET[idhotel]' LIMIT 1";
  $query_sua_Hotel= mysqli_query($mysqli,$sql_sua_Hotel);
 ?>
<p>Sửa Hotel</p>
<table border="1" width="70%" style="border-collapse: collapse;">
<?php 
  while ($row= mysqli_fetch_array($query_sua_Hotel)){
 ?>
<form method="POST" action="quanliHotel/Xuli.php?idhotel= <?php echo $row['ID_Hotel'] ?>" enctype="multipart/form-data">
    <td>Tên Hotel</td>
    <td><input type="text" value="<?php echo $row['TenHotel'] ?>" name="tenhotel"></td>
  </tr>

  <tr>
    <td>Mã Hotel</td>
    <td><input type="text" value="<?php echo $row['MaHotel'] ?>" name="mahotel" ></td>
  </tr>

   <tr>
    <td>Giá phòng</td>
    <td><input type="text" value="<?php echo $row['Giaphong'] ?>" name="giaphong" ></td>
  </tr>

 <tr>
    <td>Số lượng</td>
    <td><input type="text" value="<?php echo $row['Soluong'] ?>" name="soluong" ></td>
  </tr>

 <tr>
    <td>Nội dung</td>
    <td><textarea rows="10" name="noidung" style="resize:  none"><?php echo $row['Noidung'] ?></textarea></td>
  </tr>
<tr>
    <td>Tóm tắt</td>
    <td><textarea rows="10" name="tomtat" style="resize:  none"><?php echo  $row['Tomtat'] ?></textarea></td>
  </tr>
  <tr>
    <td>Vị trí : Code HTML MAP</td>
    <td><textarea rows="10" name="vitri" style="resize:  none"><?php echo  $row['HTML_map'] ?></textarea></td>
  </tr>
    <tr>
    <td>Hình ảnh</td>
    <td><input type="file" name="hinhanh" >
        <img src="modules/quanliHotel/Uploads/<?php echo $row['Hinhanh']?>" width='150px'>
    </td>
  </tr>
<tr>
    <td>Danh mục Hotel (Tỉnh)</td>
    <td>
      <select name="danhmuc">
        <?php 
          $sql_danhmuc = "SELECT *FROM tb_danhmuchotel ORDER BY ID_Tinh ASC ";
          $query_danhmuc =mysqli_query($mysqli,$sql_danhmuc);
          while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
            if ($row_danhmuc['ID_Tinh']==$row['ID_Tinh']){
         ?>
        <option  selected value="<?php echo $row_danhmuc['ID_Tinh']; ?>"><?php echo $row_danhmuc['Name']; ?></option>
        <?php }
        else{ 
          ?>
          <option value="<?php echo $row_danhmuc['ID_Tinh']; ?>"><?php echo $row_danhmuc['Name']; ?></option>
        <?php 
          }
          } 
          ?>
      </select>

    </td>
  </tr>

  <tr>
    <td>Tình trạng</td>
    <td>
      <select name="tinhtrang">
      <?php 
      if ($row['tinhtrang']==1){
       ?>
            <option value="1" selected>Kích hoạt</option>
            <option value="0">Ẩn</option>
      }
      <?php 
        }else{
       ?>
             <option value="1" >Kích hoạt</option>
             <option value="0" selected>Ẩn</option>
        <?php 
        } 
        ?>
      </select>

    </td>
  </tr>

  <tr>
    <td colspan="2"><input type="submit" name="suasp" value="Sửa Hotel"></td>
  </tr>
 </form> 
<?php } ?>
</table>