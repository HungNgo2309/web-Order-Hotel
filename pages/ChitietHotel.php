<?php 
if (isset($_POST['comment']))
{
  $star =$_POST['star'];
  $username=$_SESSION['dangky'];
  $comment =$_POST['textcomment'];
  $id_hotel = $_GET['id'];
  $sql_rating= mysqli_query($mysqli,"INSERT INTO tb_ratehotel(ID_Hotel,numberstar,Username,Comment) VALUE('".$id_hotel."','".$star."','".$username."','".$comment."')");

}  
$sql_chitiet = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND tb_hotel.ID_Hotel ='$_GET[id]'  LIMIT 1";
          $query_chitiet =mysqli_query($mysqli,$sql_chitiet);
          while ($row_chitiet = mysqli_fetch_array($query_chitiet)){
?>
<style type="text/css">.checked {
  color: orange;
}
<div class="stars">
  <form action="">
    <input class="star star-5" id="star-5" type="radio" name="star"/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" name="star"/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" name="star"/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" name="star"/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" name="star"/>
    <label class="star star-1" for="star-1"></label>
  </form>
</div>


div.stars {
  width: 270px;
  display: inline-block;
}
input.star { display: none; }
label.star {
  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}
input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}
input.star-1:checked ~ label.star:before { color: #F62; }
label.star:hover { transform: rotate(-15deg) scale(1.3); }
label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}
</style>
<div class="wrapper-chi-tiet">
<div class="hinh-anh-hotel">
	<img width="50%" src="admincp/modules/quanliHotel/Uploads/<?php echo $row_chitiet['Hinhanh'] ?>">
</div>

<form method="POST" action="pages/Themgiohang.php?idhotel=<?php echo $row_chitiet['ID_Hotel'] ?>">
		<div class="chi-tiet-hotel">
			<h3>Tên Hotel : <?php echo $row_chitiet['TenHotel'] ?></h3>
			<p>Mã Hotel:  <?php echo $row_chitiet['ID_Hotel'] ?></p>
			<p>Số lượng phòng còn lại:  <?php echo $row_chitiet['Soluong'] ?></p>
			<p>Giá phòng: <?php echo number_format($row_chitiet['Giaphong'],0,',','.' ) ?> VNĐ /ngày</p>			
			<p><input type="submit" value="Lưu lại" name="themgiohang" class="btn btn-warning"></p>
			
		</div>
</form>
<ul class="nav nav-tabs" style="clear: both;">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#home">Nội dung</a>
  </li>
 
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#menu2">Vị trí</a>
  </li> 

  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#menu3">Đánh giá</a>
  </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div class="tab-pane active container" id="home"><?php echo $row_chitiet['Noidung'] ?></div>
  
  <div class="tab-pane container" id="menu2"><?php echo $row_chitiet['HTML_map'] ?></div>

  <div class="tab-pane container" id="menu3">
    
    <?php if (isset( $_SESSION['dangky'])) {?>
    <form action="" method="POST" >
          <div class="stars">
                  
                    <input class="star star-5" id="star-5" type="radio" name="star" value="5">
                    <label class="star star-5" for="star-5"></label>
                    <input class="star star-4" id="star-4" type="radio" name="star" value="4">
                    <label class="star star-4" for="star-4"></label>
                    <input class="star star-3" id="star-3" type="radio" name="star" value="3">
                    <label class="star star-3" for="star-3"></label>
                    <input class="star star-2" id="star-2" type="radio" name="star" value="2">
                    <label class="star star-2" for="star-2"></label>
                    <input class="star star-1" id="star-1" type="radio" name="star" value="1">
                    <label class="star star-1" for="star-1"></label>
                  
          </div>

      <p><img src="Images/img_avatar3.png" style="width:60px;"><?php echo $_SESSION['dangky'] ?></p>
      <textarea class="form-control" rows="5" id="comment" name="textcomment"></textarea>
      <p><input type="submit" value="Comment" name="comment" class="btn btn-warning"></p>                   
                        
    </form>
    <?php } ?>

    <?php 
    $sql_rate = "SELECT * FROM tb_ratehotel Where ID_Hotel= '".$row_chitiet['ID_Hotel']."' ";
              $query_rate=mysqli_query($mysqli,$sql_rate);
              while ($row_rate =mysqli_fetch_array($query_rate)){
     ?>
     <p><img src="Images/img_avatar3.png" style="width:60px;"><?php echo $row_rate['Username'] ?>
       <div>
                  <?php 
                  $i =1;
                for($i=1;$i<=$row_rate['numberstar'];$i++){ ?>
                  <span class="fa fa-star checked"></span>
                <?php }for($i=1;$i<=5-$row_rate['numberstar'];$i++){ ?>
                  <span class="fa fa-star"></span>
                  <?php } ?>
                </div>
     </p>
     <p><?php echo $row_rate['Comment']  ?></p>
   <?php } ?>
  </div>
</div>
</div>

<?php } ?>