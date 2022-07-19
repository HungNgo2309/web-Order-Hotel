<?php 
	session_start();
	include ('../admincp/config/config.php');
	if(	isset($_POST['dangnhap'])){
		$taikhoan = $_POST['username'];
		$matkhau = $_POST['password'];
		$sql = "SELECT * FROM tb_hoteler WHERE Ma_Hotel='".$taikhoan."' AND Password='".$matkhau."'LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
		$count = mysqli_num_rows($row);
        $row_title = mysqli_fetch_array($row);
		if($count>0){
			$_SESSION['dangnhap']=$taikhoan;
			header("Location:index.php");
		}else{
			echo '<script>alert("Tài khoản hoặc Mật khẩu không đúng, vui lòng nhập lại. ")</script>';
			header("Location:login.php");
		}
	}
 ?>
<!DOCTYPE html>
<html>
    <head>
        <title>Đăng nhập vào website</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    </head>
    <body>

        <main>
            <div class="container">
            <div class="login-form">
                <form action="" autocomplete="off" method="POST">
                    <h1>Đăng nhập vào website</h1>
                    <div class="input-box">
                        <i ></i>
                        <input type="text" name="username" placeholder="Nhập username">
                    </div>
                    <div class="input-box">
                        <i ></i>
                        <input type="password" name="password" placeholder="Nhập mật khẩu">
                    </div>
                    <div class="btn-box">
                        <button type="submit" name="dangnhap">
                            Đăng nhập
                        </button>
                    </div>
                </form>
            </div>
            </div>
        </main>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </body>
</html>