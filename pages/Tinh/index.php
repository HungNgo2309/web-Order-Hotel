<?php   
		if(isset($_GET['trang'])){
			$page =$_GET['trang'];

			}else{
				$page =1;
			}
			if($page ==''|| $page==1){
				$begin=0;
			}
			else {
				$begin= ($page*6)-6;
			}
		if (isset($_POST['loc']))
		{
			if (($_POST['checkbox'])=='reduce')
			{
				$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh  ORDER BY tb_hotel.Giaphong DESC LIMIT $begin,6";
				if($_POST['price']==1){
					$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND Giaphong<3000000  ORDER BY tb_hotel.Giaphong DESC LIMIT $begin,6";
				}
				elseif ($_POST['price']==2) {
					$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND Giaphong>3000000 AND Giaphong<5000000  ORDER BY tb_hotel.Giaphong DESC LIMIT $begin,6";
				}elseif ($_POST['price']==3) {
					$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND  Giaphong>5000000  ORDER BY tb_hotel.Giaphong DESC LIMIT $begin,6";}
			}
			else if (($_POST['checkbox'])=='raise')
			{
				$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh  ORDER BY tb_hotel.Giaphong ASC  LIMIT $begin,6";
				if($_POST['price']==1){
					$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND Giaphong<3000000  ORDER BY tb_hotel.Giaphong ASC LIMIT $begin,6";
				}
				elseif ($_POST['price']==2) {
					$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND Giaphong>3000000 AND Giaphong<5000000  ORDER BY tb_hotel.Giaphong ASC LIMIT $begin,6";
				}elseif ($_POST['price']==3) {
					$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND  Giaphong>5000000  ORDER BY tb_hotel.Giaphong ASC LIMIT $begin,6";}
			}
		}
		else{
		$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh  ORDER BY tb_hotel.ID_Hotel DESC LIMIT $begin,6";
	}
        $query_hotel =mysqli_query($mysqli,$sql_hotel);
        
?>
<style type="text/css">.checked {
  color: orange;
}</style>			
<form action="" method="POST">
	<p>Bộ Lọc <button name="loc"><img src="Images/filter-line-icon-vector.jpg" width="20px"></button></p>
	<div>
		<div class="custom-control custom-checkbox">
    <input type="checkbox" class="custom-control-input" id="customCheck" name="checkbox" value="reduce">
    <label class="custom-control-label" for="customCheck">Giá giảm dần</label>
  		</div>
  		<div class="custom-control custom-checkbox">
    <input type="checkbox" class="custom-control-input" id="customCheck" name="checkbox" value="raise">
    <label class="custom-control-label" for="customCheck">Giá tăng dần</label>
  		</div>
  		<select name="price" class="custom-select">
		    <option selected>Không chọn</option>
		    <option value="1">Dưới 3tr VNĐ</option>
		    <option value="2">3tr VNĐ - 5tr VNĐ</option>
		    <option value="3">Trên 5tr</option>
		 </select>
	</div>
</form>
			<div class="row">
				<?php while ($row = mysqli_fetch_array($query_hotel)){ ?>
				<div class="col-lg-4 col-md-4 col-sm-6" >
					<a href="index.php?quanli=hotel&id=<?php echo $row['ID_Hotel'] ?>" >
						<figure >
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="admincp/modules/quanliHotel/Uploads/<?php echo $row['Hinhanh'] ?>" alt="Image" class="img-responsive" >
						</figure>
						<div class="fh5co-text">
							<h2><?php echo $row['TenHotel'] ?></h2>
							<p><?php echo $row['Tomtat']  ?></p>
							<p style="color: red"> Giá phòng : <?php echo number_format($row['Giaphong'],0,',','.'  )?> VNĐ</p>
							<p><?php echo $row['Name']  ?></p>
							<?php
							$sql_rate = "SELECT ID_Hotel,AVG(numberstar) as avg FROM tb_ratehotel Where ID_Hotel= '".$row['ID_Hotel']."' Group by ID_Hotel ";
							$query_rate=mysqli_query($mysqli,$sql_rate);
							$row_rate =mysqli_fetch_array($query_rate);
							 if(isset($row_rate['avg'] )){
									?>
								<div>
									<?php 
									$i =1;
								for($i=1;$i<=$row_rate['avg'];$i++){ ?>
									<span class="fa fa-star checked"></span>
								<?php }for($i=1;$i<=5-$row_rate['avg'];$i++){ ?>
									<span class="fa fa-star"></span>
									<?php } ?>
								</div>
							<?php }else{ ?>
							<div>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
							</div>
						<?php } ?>
							<p><span class="btn btn-primary">Đặt ngay</span></p>
						</div>
					</a>
				</div>
				<?php } ?>
				</ul>
			</div>

			<?php 
				$sql_trang = mysqli_query($mysqli,"SELECT * FROM  tb_hotel");
				$row_count = mysqli_num_rows($sql_trang);
				$trang = ceil($row_count/6);
					 ?>
			<ul class="pagination">
				<?php $z =1; ?>
				<li class="page-item" <?php if($page>1){echo $z = $page -1;} ?>><a class="page-link" href="index.php?trang=<?php echo $z ?>&quanli=khachsan">Previous</a></li>
				<?php 
					for ($i=1; $i<=$trang ; $i++) { 
						 ?>
			
			  <li  <?php if($i==$page){echo 'class="page-item active"'; } else{echo 'class="page-item"';} ?>><a  class="page-link" href="index.php?trang=<?php echo $i  ?>&quanli=khachsan"><?php echo $i  ?></a></li>
			  
			  			<?php } ?>
			  		<li class="page-item" ><a class="page-link" href="index.php?trang=<?php echo $page +1 ?>&quanli=khachsan">Next</a></li>
			</ul>
 	