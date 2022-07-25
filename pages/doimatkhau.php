<?php 
ob_start();
include ('admincp/config/config.php');
require ('mail/sentmail.php');
 $token = bin2hex(random_bytes(4));
 $expFormat = mktime(date("H"), date("i")+5, date("s"), date("m") ,date("d"), date("Y")
           );
           $expDate = date("Y-m-d H:i:s",$expFormat);
 $taikhoan=$_SESSION['email'];
 $tieude ="Đổi mật khẩu Hotels VN";
 $noidung="<p>Bạn vừa yêu cầu thay đôi mật khẩu</p>
            <p>Vui lòng nhập mã sau để yêu cầu được chấp nhận</p>
            <p>".$token."  Mã sẽ hết hạn sau 5 phút</p>
            <p>Không chia sẻ mã này cho bất kì ai.Cảm ơn !</p>        ";
 $mail= new Mailer();
 $mail->dathangmail($tieude,$noidung,$taikhoan);
	if(	isset($_POST['doipass'])){
		$matkhaucu = $_POST['matkhaucu'];
		$matkhaumoi = $_POST['matkhaumoi'];
        //Kiêm tra password cũ
		$sql = "SELECT * FROM tb_khachhang,tb_resetpassword WHERE tb_khachhang.Email = tb_resetpassword.email AND tb_khachhang.Email='".$taikhoan."' AND tb_khachhang.Matkhau='".$matkhaucu."' ORDER BY ID DESC LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
        $row_n= mysqli_fetch_array($row);
		$count = mysqli_num_rows($row);
		if($count>0){
            // Thêm dữ liệu vào bảng reset
            $sql_reset = "INSERT INTO tb_resetpassword(email,Password,Token,Time) VALUE('".$taikhoan."','".$matkhaumoi."','".$token."','".$expDate."')";
            $query = mysqli_query($mysqli,$sql_reset);
            if($row_n['Token']==$_POST['token'])
            {
                $curDate = date("Y-m-d H:i:s");
                if ($row_n['Time'] >= $curDate){
                    $sql_update = mysqli_query($mysqli,"UPDATE tb_khachhang SET  Matkhau='".$matkhaumoi."' Where Email='".$taikhoan."' ");
                        header('Loction:index.php?quanli=khachsan');
            echo '<script style =" color : green;">alert("Mật khẩu đã được thay đổi ")</script>';
        
                }else{
                     echo '<script style =" color : red;">alert("Mã đã hết hạn")</script>';
                }
            }else{
                 echo '<script style =" color : red;">alert("Mã sai vui lòng kiểm tra lại ")</script>';
                header('Loction:index.php?quanli=khachsan');
            }
			
		}else{
			echo '<script style =" color : red">alert("Tài khoản hoặc Mật khẩu cũ không đúng, vui lòng nhập lại. ")</script>';
			
		}
	}
    ob_end_flush();
 ?>
 <style type="text/css">
        	*{
    padding: 0px;
    margin: 0px;
    font-family: sans-serif;
    box-sizing: border-box;
}
header{
    background-color: #cccccc;
    min-height: 70px;
    padding: 15px;
}
main{
    background-color: #dddddd;
    min-height: 300px;
    padding: 7.5px 15px;
}
footer{
    background-color: #cccccc;
    min-height: 70px;
    padding: 15px;
}
.container{
    width: 100%;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
}
.login-form{
    width: 100%;
    max-width: 400px;
    margin: 20px auto;
    background-color: #ffffff;
    padding: 15px;
    border: 2px dotted #cccccc;
    border-radius: 10px;
}
h1{
    color: #009999;
    font-size: 20px;
    margin-bottom: 30px;
}
.input-box{
    margin-bottom: 10px;
}
.input-box input{
    padding: 7.5px 15px;
    width: 100%;
    border: 1px solid #cccccc;
    outline: none;
}
.btn-box{
    text-align: right;
    margin-top: 30px;
}
.btn-box button{
    padding: 7.5px 15px;
    border-radius: 2px;
    background-color: #009999;
    color: #ffffff;
    border: none;
    outline: none;
}
        </style>

            <div class="container">
            <div class="login-form">
                <form action="" autocomplete="off" method="POST">
                    <h1>Đổi mật khẩu</h1>
                    
                    <div class="input-box">
                        <i >Nhập mật khẩu cũ</i>
                        <input type="text" name="matkhaucu" >
                    </div>
                    <div class="input-box">
                        <i >Nhập mật khẩu mới</i>
                        <input type="password" name="matkhaumoi" >
                    </div>
                    <div class="input-box">
                        <i >Nhập mã được gửi về email</i>
                        <input type="text" name="token" >
                    </div>
                    <div class="btn-box">
                        <button type="submit" name="doipass">
                            Đổi mật khẩu
                        </button>
                    </div>
                </form>
            </div>
            </div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>