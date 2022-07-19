<h3 style="margin-left: 100px;">Khách sạn được nhiều người quan tâm nhất</h3>
<?php 
    $sql_mosttrip = "SELECT COUNT(id_chitiet) as Soluong,tb_hotel.ID_Hotel,tb_hotel.TenHotel,tb_hotel.Hinhanh FROM tb_chitietdatphong,tb_hotel WHERE tb_hotel.ID_Hotel=tb_chitietdatphong.id_hotel GROUP BY id_hotel,tb_hotel.TenHotel,tb_hotel.Hinhanh  ORDER BY COUNT(id_chitiet) DESC LIMIT 5";
    $query_most =mysqli_query($mysqli,$sql_mosttrip);
    $i=0;
    while ($row_most = mysqli_fetch_array($query_most)){
      $i++;
 ?>
<style type="text/css">
  div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}
</style>

<div style="margin-left: 110px;">
<div class="gallery" style="width: 200px; height: 250px;">
  <a  target="_blank" href="index.php?quanli=hotel&id=<?php echo $row_most['ID_Hotel'] ?>">
    <div style="width: 200px ;height: 130px"><img src="admincp/modules/quanliHotel/Uploads/<?php echo $row_most['Hinhanh'] ?>" alt="Cinque Terre">
      </div>
  </a>
  <div class="desc"><?php echo $row_most['TenHotel'] ?></div>
  <p style="text-align: center;color: blue"><?php echo $row_most['Soluong'] ?> Đã đặt phòng </p>
</div>
</div>
<?php } ?>