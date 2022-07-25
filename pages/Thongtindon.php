<?php 
  $username = $_SESSION['dangky'];
  $id_chitiet= $_GET['update'];
  $sql_update="SELECT *,tb_chitietdatphong.Soluong as sl From  tb_chitietdatphong,tb_hotel Where id_chitiet='".$id_chitiet."' AND tb_hotel.ID_Hotel=tb_chitietdatphong.id_hotel ";
  $query=mysqli_query($mysqli,$sql_update);
  $row=mysqli_fetch_array($query);
 ?>
 <h3 style="text-align: center;color: red;font-family: arial">Thông tin đặt phòng</h3>
<form action="pages/UpdateOrder.php?idct=<?php echo $id_chitiet ?>&id=<?php echo $row['ID_Hotel'] ?>" method="POST">
  <!-- 2 column grid layout with text inputs for the first and last names -->
  <div class="row mb-4">
    <div class="col">
      <div class="form-outline">
            <label class="form-label" for="form6Example1">Họ và tên</label>
        <input type="text" id="form6Example1" class="form-control" value="<?php echo $username ?>" />
    
      </div>
    </div>
    <div class="col">
      <div class="form-outline">
        <label class="form-label" for="form6Example2">Tên khách sạn</label>
        <input type="text" id="form6Example2" class="form-control" value="<?php echo $row['TenHotel'] ?>" />
        
      </div>
    </div>
  </div>

  <!-- Text input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example3">Ngày nhận phòng</label>
    <input type="date" id="form6Example3" name="StartDay" class="form-control"  value="<?php echo $row['StartDay'] ?>" />
    
  </div>

  <!-- Text input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example4">Ngày trả phòng</label>
    <input type="date" id="form6Example4" name="EndDay" class="form-control"  value="<?php echo $row['EndDay'] ?>" />
    
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example5">Số lượng</label>
    <input type="text" id="form6Example5" name="sl" class="form-control" value="<?php echo $row['sl'] ?>" />
    
  </div>

  <!-- Number input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example6">Loại phòng</label>
    <select  name="typeroom" id="activities"  class="form-control">
      <option><?php echo $row['Typeroom'] ?></option>
    <?php 
       $sql_type="SELECT * FROM tb_hotel,tb_chitiethotel Where tb_hotel.ID_Hotel=tb_chitiethotel.ID_Hotel AND tb_hotel.ID_Hotel ='".$row['id_hotel']."' ";
                    $query_type =mysqli_query($mysqli,$sql_type);
                        while ($row_type = mysqli_fetch_array($query_type)){
                               ?>
                              
                             <option value="<?php echo $row_type['TyperoomHotel'] ?>" ><?php echo $row_type['TyperoomHotel'] ?></option>
                              <?php } ?>
    </select>
  </div>

  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4" name="Change">Thay đổi</button>
</form>