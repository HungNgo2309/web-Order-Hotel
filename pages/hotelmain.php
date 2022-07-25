<?php 
          $sql_hotel = "SELECT *FROM tb_hotel Where tb_hotel.ID_Tinh = '$_GET[id]' ORDER BY tb_hotel.ID_Hotel DESC ";
          $query_hotel =mysqli_query($mysqli,$sql_hotel);
          // get ten danh muc
          $sql_cate = "SELECT *FROM tb_danhmuchotel Where tb_danhmuchotel.ID_Tinh = '$_GET[id]' Limit 1 ";
          $query_cate =mysqli_query($mysqli,$sql_cate);
          $row_title = mysqli_fetch_array($query_cate);
?>
<style type="text/css">.checked {
  color: orange;
}</style>
<h2>Khu vực tỉnh :<?php echo $row_title['Name'] ?></h2>	
			<div class="row">
				<?php while ($row_hotel = mysqli_fetch_array($query_hotel)){ ?>
				<div class="col-lg-4 col-md-4 col-sm-6" >
					<a href="index.php?quanli=hotel&id=<?php echo $row_hotel['ID_Hotel'] ?>" id ="borderhotel" >
						<figure >
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="admincp/modules/quanliHotel/Uploads/<?php echo $row_hotel['Hinhanh'] ?>" alt="Image" class="img-responsive" >
						</figure>
						<div class="fh5co-text">
							<h2><?php echo $row_hotel['TenHotel'] ?></h2>
							<p><?php echo $row_hotel['Tomtat']  ?></p>
							<p style="color: red"> Giá phòng : <?php echo number_format($row_hotel['Giaphong'],0,',','.'  )?> VNĐ</p>
							<?php
							$sql_rate = "SELECT ID_Hotel,AVG(numberstar) as avg FROM tb_ratehotel Where ID_Hotel= '".$row_hotel['ID_Hotel']."' Group by ID_Hotel ";
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
								<span class="fa fa-star "></span>
								<span class="fa fa-star "></span>
								<span class="fa fa-star "></span>
								<span class="fa fa-star "></span>
								<span class="fa fa-star "></span>
							</div>
						<?php } ?>
							<p><span class="btn btn-primary">Đặt phòng</span></p>
						</div>
					</a>
				</div>
				<?php } ?>
				</ul>
			</div>
