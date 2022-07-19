<?php 
	session_start();
	include ('../admincp/config/config.php');
  require ('../mail/sentmail.php');
	   $code = rand(0, 9999);
	   $start = $_POST['startdate'];
	   $end = $_POST['enddate'];
	   $id_KH = $_SESSION['id_khachhang'];
	   $id_hotel = $_SESSION['id_hotel'];
	   $soluong = $_POST['soluong'];
     $TenHotel =$_POST['tenhotel'];
     print_r($TenHotel);
       $insert_cart="INSERT INTO tb_datphong(id_khachhang,Code,Status) VALUE('".$id_KH."','".$code."',1)";
       $cart_query= mysqli_query($mysqli,$insert_cart);
       if($cart_query)
       {
       	 $insert_chitiet="INSERT INTO tb_chitietdatphong(id_hotel,Code,EndDay,StartDay,Soluong) VALUE('".$id_hotel."','".$code."','".$end."','".$start."','".$soluong."')";	
       	  mysqli_query($mysqli,$insert_chitiet);
          $tieude ="Đặt phòng Website HotelsVN.com thành công";
          $noidung="<p>Cảm ơn quy khách đã đặt phòng trên Website của chúng tôi . Mã đơn đặt phòng là : ".$code."</p>
          <ul>
                          <li>Tên khách sạn :".$TenHotel."</li>
                          <li>Ngày nhận phòng :".$start." 
                          Ngày trả phòng ".$end."</li>
                          <li>Số lượng phòng đặt : ".$soluong."</li>
                     </ul>";
          
          $maildathang = $_SESSION['email'];

       	  $mail= new Mailer();
          $mail->dathangmail($tieude,$noidung,$maildathang);
           echo '<script>alert("Đặt phòng thành công.Vui lòng kiểm tra email của bạn ")</script>';
          header('Location:../index.php?quanli=khachsan');
       }
   
 ?>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>