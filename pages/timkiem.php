
<?php  
		if(isset($_POST['timkiem']))
		{
			$startdate=$_POST['startdate'];
			$enddate=$_POST['enddate'];
			$nl=$_GET['nl'];
			$te =$_GET['te'];
		}
 			$sql_hotel = "SELECT *FROM tb_danhmuchotel,tb_hotel,tb_chitiethotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND tb_hotel.ID_Hotel=tb_chitiethotel.ID_Hotel  AND tb_chitiethotel.DateCheckIn <='".$startdate."'AND tb_chitiethotel.DateCheckOut>='".$enddate."'AND NumberPeople='".$nl."' AND NumberChild ='".$te."' " ;
          $query_hotel =mysqli_query($mysqli,$sql_hotel);
         
?>
			
		
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
							<p><?php echo $startdate  ?> đến <?php echo $enddate  ?></p>
							<p>Người lớn <?php echo $nl ?> , Trẻ em <?php echo $te ?></p>

							<p style="color: red"> Giá phòng : <?php 
								    $first_date = strtotime($_POST['startdate']);
									$second_date = strtotime($_POST['enddate']);
									$datediff = abs($first_date - $second_date);
									$t = ((floor($datediff / (60*60*24))+1) *$row['Price']);
									echo number_format($t,0,',','.'  )?> VNĐ</p>
							<p>Loại phòng : <?php echo $row['TyperoomHotel']  ?></p>
							<p><span class="btn btn-primary">Đặt ngay</span></p>
						</div>
					</a>
				</div>
				<?php } ?>
				</ul>
			</div>
