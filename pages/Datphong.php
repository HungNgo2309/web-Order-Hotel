<style type="text/css">
  .head{
    text-align: center; color: Red;
  }
</style>
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
     $username = $_SESSION['dangky'];
     $email = $_SESSION['email'];
     $type = $_POST['typeroom'];
       $insert_cart="INSERT INTO tb_datphong(id_khachhang,Code,Status) VALUE('".$id_KH."','".$code."',1)";
       $cart_query= mysqli_query($mysqli,$insert_cart);
       if($cart_query)
       {
       	 $insert_chitiet="INSERT INTO tb_chitietdatphong(id_hotel,Code,EndDay,StartDay,Soluong,Typeroom) VALUE('".$id_hotel."','".$code."','".$end."','".$start."','".$soluong."','".$type."')";	
       	  mysqli_query($mysqli,$insert_chitiet);
          $tieude ="Đặt phòng Website HotelsVN.com thành công";
          $noidung= "<h2 style='font-size: 150px;'>Hóa Đơn Đặt phòng</h2>";
          $noidung.="<div>";
          $noidung.=  "<p>Họ và tên khách hàng:".$username."</p>";
          $noidung.=   " <p>Địa chỉ email :".$email."</p>";
          $noidung.=    "  <p>Số điện thoại</p>";
           $noidung.=     "<p>Mã đặt phòng: ".$code."</p>";
            $noidung.=    "<p> Đơn vị chịu trách nhiệm HotelsVN.com</p>";
             $noidung.=  " </div>";
             $noidung.=   "<table  >";
              $noidung.=  "  <tr>";
              $noidung.=    "  <td>Tên khách sạn</td>";
              $noidung.=     " <td>Mã khách sạn</td>";
              $noidung.=      "<td>Loại phòng</td>";
              $noidung.=     " <td>Ngày nhận phòng</td>";
              $noidung.=     " <td>Ngày trả phòng</td>";
               $noidung.=    " <td>Số lượng</td>";
              $noidung.=  "  </tr>";
               $noidung.= "  <tr>";
               $noidung.=     "<td>".$TenHotel."</td>";
               $noidung.=     "<td>".$id_hotel."</td>";
              $noidung.=     " <td>".$type."</td>";
               $noidung.=     "<td>".$start."</td>";
               $noidung.=    " <td>".$end."</td>";
                $noidung.=   " <td>".$soluong."</td>";
               $noidung.=   "</tr>";
              $noidung.=  "</table>";
               $noidung.= "<p>Mọi thông tin chi tiết liên hệ trang web HotelsVN.com</p>";
          
          $maildathang = $_SESSION['email'];

       	  $mail= new Mailer();
          $mail->dathangmail($tieude,$noidung,$maildathang);
           echo '<script>alert("Đặt phòng thành công.Vui lòng kiểm tra email của bạn ")</script>';
          header('Location:../index.php?quanli=khachsan');
       }
   
 ?>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>