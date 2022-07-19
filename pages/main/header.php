	<?php 
		
		$sql_dd = "SELECT * FROM tb_hotel ";
		$row_dd = mysqli_query($mysqli,$sql_dd);
		 $sql_danhmuc = "SELECT *FROM tb_danhmuchotel ORDER BY ID_Tinh ASC ";
          $query_danhmuc =mysqli_query($mysqli,$sql_danhmuc);
      
	 ?>
	<div id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(Images/img_bg_2.jpg)">
		<div class="overlay"></div>
		<div class="gtco-container">
			<div class="row">
				<div class="col-md-12 col-md-offset-0 text-left">
					
<div class="gtco-container">

			</div> 	
					<div class="row row-mt-15em">
						<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
							<h1>Bạn lo ngại việc đi du lịch hay làm việc mà không có nơi ở?</h1>	
						</div>
						<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
							<div class="form-wrap">
								<div class="tab">
								<?php 
								if(isset($_SESSION['dangky'])&& $_GET['quanli']=='hotel'){ 
									$id_hotel = $_GET['id'];
						        $row_dathotel= mysqli_query($mysqli,"SELECT * FROM tb_hotel,tb_danhmuchotel Where tb_hotel.ID_Tinh = tb_danhmuchotel.ID_Tinh AND tb_hotel.ID_Hotel='".$id_hotel."' ");
						        $row_dat_hotel= mysqli_fetch_array($row_dathotel);
						        $id_KH = $_SESSION['id_khachhang'];
						         $row_dat= mysqli_query($mysqli,"SELECT * FROM tb_khachhang Where ID_Khachhang='".$id_KH."' ");
       							 $row_dat_phong= mysqli_fetch_array($row_dat);
       							 $_SESSION['id_hotel']= $id_hotel;
						        ?>
									<div class="tab-content">

										<div class="tab-content-inner active" data-content="signup">
											<h3>Đặt phòng ngay</h3>
											<form  method="POST" action="pages/Datphong.php?id_hotel=<?php echo $id_hotel ?>" >
												<div class="row form-group">
						 
													<div class="col-md-12">
														<label for="fullname">Tên của bạn</label>
														<input type="text" id="fullname" class="form-control" name="tenkh" value="<?php echo $row_dat_phong['Tenkhachhang'] ?>">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="activities">Tên Khách sạn</label>
														<input type="text" id="fullname" class="form-control" name="tenhotel" value="<?php echo $row_dat_hotel['TenHotel'] ?>">												
															<option value="<?php echo $row_dat_hotel['TenHotel'] ?>"></option>
															
														</select>
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="destination">Địa điểm</label>
														<input type="text" id="fullname" class="form-control" name="" value="<?php echo $row_dat_hotel['Name'] ?>">
															
															
														
														</select>
													</div>
												</div>
												
												<p>Ngày nhận phòng</p>
												<input type="date" data - date - inline- picker ="true" name="startdate">
												<p>Ngày trả phòng</p>
												<input type="date" data - date - inline- picker ="true" name="enddate" >
												<p>Số lượng phòng</p>
												<input type="text" name="soluong">
												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" name="datphong" class="btn btn-primary btn-block" value="Submit">
													</div>
												</div>
											</form>	
										</div>

										
									</div>
								<?php }else{ ?>
									<div class="tab-content">
										<div class="tab-content-inner active" data-content="signup">
											<h3>Đặt phòng ngay</h3>
											<form action="#">
												<div class="row form-group">
			
													<div class="col-md-12">
														<label for="fullname">Tên của bạn</label>
														<input type="text" id="fullname" class="form-control">
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="activities">Tên Khách sạn</label>
														<select name="#" id="activities" class="form-control">
															<?php 
															while ($row_dong = mysqli_fetch_array($row_dd)){
															 ?>
															
															<option value=""><?php echo $row_dong['TenHotel'] ?></option>
															<?php } ?>
														</select>
													</div>
												</div>
												<div class="row form-group">
													<div class="col-md-12">
														<label for="destination">Địa điểm</label>
														<select name="#" id="destination" class="form-control">
															<?php while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){ ?> 
															<option value=""><?php echo $row_danhmuc['Name'] ?></option>
														<?php } ?>
														</select>
													</div>
												</div>
												<p>Ngày nhận phòng</p>
												<input type="date" data - date - inline- picker ="true" name="startdate">
												<p>Ngày trả phòng</p>
												<input type="date" data - date - inline- picker ="true" name="enddate" >
												
												<div class="row form-group">
													<div class="col-md-12">
														<input type="submit" class="btn btn-primary btn-block" value="Submit">
													</div>
												</div>
											</form>	
										</div>

										
									</div>
								<?php } ?>
								</div>
							</div>
						</div>
					</div>
							
					
				</div>
			</div>
		</div>
	</div>
	<?php 
	$sql_lietke_dp="SELECT * FROM tb_datphong,tb_khachhang Where tb_datphong.id_khachhang = tb_khachhang.ID_Khachhang ORDER BY tb_datphong.id_Don DESC";
	$query_lietke_dp= mysqli_query($mysqli,$sql_lietke_dp);
	$row = mysqli_fetch_array($query_lietke_dp);
	$sql_tran = mysqli_query($mysqli,"SELECT * FROM  tb_datphong");
	$row_cunt = mysqli_num_rows($sql_tran);
	
 ?>
	<marquee loop = "1"><p style="color: red"><?php
	
		$sql_ma = mysqli_query($mysqli,"SELECT Tenkhachhang FROM tb_datphong,tb_khachhang Where tb_datphong.id_khachhang = tb_khachhang.ID_Khachhang AND tb_datphong.ID_Don = '".$row_cunt."'  ORDER BY tb_datphong.id_Don DESC"); 
		echo $row['Tenkhachhang']." đã đặt phòng thành công!             " ;
	
	  ?> </p></marquee>
