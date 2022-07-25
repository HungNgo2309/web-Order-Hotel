<?php 
	session_start();
	include ('../admincp/config/config.php');
	require ('../mail/sentmail.php');
	if(isset($_POST['Change']))
	{
		$id_ct=$_GET['idct'];
		$start = $_POST['StartDay'];
		$end=$_POST['EndDay'];
		$sl =$_POST['sl'];
		$type =$_POST['typeroom'];
		$id_KH = $_SESSION['id_khachhang'];
		$username = $_SESSION['dangky'];
     	$email = $_SESSION['email'];
		$sql_update="UPDATE tb_chitietdatphong SET StartDay = '".$start."',EndDay='".$end."',Soluong='".$sl."',Typeroom='".$type."' Where id_chitiet='".$id_ct."'";
		$query=mysqli_query($mysqli,$sql_update);
		if ($query)
		{
		  $sql_change="SELECT* FROM tb_chitietdatphong,tb_hotel Where tb_hotel.ID_Hotel=tb_chitietdatphong.id_hotel AND tb_chitietdatphong.id_chitiet='$id_ct'";
		  $query_change=mysqli_query($mysqli,$sql_change);
		  print_r($sql_change);
		  $row=mysqli_fetch_array($query_change);
		  $tieude ="Thay đổi thông tin đặt phòng Website HotelsVN.com thành công";
          $noidung="
                          <h2> Hóa Đơn Đặt phòng</h2>
                <div >
                <p>Họ và tên khách hàng:".$username."</p>
                <p>Địa chỉ email :".$email."</p>
                <p>Số điện thoại</p>
                <p>Mã đặt phòng: ".$row['code']."</p>
                <p> Đơn vị chịu trách nhiệm HotelsVN.com</p>
                </div>
                <table>
                  <tr>
                    <td>Tên khách sạn</td>
                    <td>Mã khách sạn</td>
                    <td>Loại phòng</td>
                    <td>Ngày nhận phòng</td>
                    <td>Ngày trả phòng</td>
                    <td>Số lượng</td>
                  </tr>
                  <tr>
                    <td>".$row['TenHotel']."</td>
                    <td>".$_GET['id']."</td>
                    <td>".$type."</td>
                    <td>".$start."</td>
                    <td>".$end."</td>
                    <td>".$sl."</td>
                  </tr>
                </table>
                <p>Mọi thông tin chi tiết liên hệ trang web HotelsVN.com</p>";
          
          $maildathang = $_SESSION['email'];

       	  $mail= new Mailer();
          $mail->dathangmail($tieude,$noidung,$maildathang);
          echo '<script>alert("Thay đổi thành công.Vui lòng kiểm tra email của bạn ")</script>';
	     header('Location:../index.php?quanli=lichsudatphong');

		}
	}
 ?>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>