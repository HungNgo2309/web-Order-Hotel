<?php  
	
	if(isset($_POST['dangky'])){
			$tenkhachhang = $_POST['hovaten'];
			$email = $_POST['email'];
			$diachi = $_POST['diachi'];
			$matkhau = $_POST['matkhau'];
			$sdt = $_POST['sdt'];
			$sql_dangky= mysqli_query($mysqli,"INSERT INTO tb_khachhang(Tenkhachhang,Email,Diachi,Matkhau,SDT) VALUE('".$tenkhachhang."','".$email."','".$diachi."','".$matkhau."','".$sdt."')");
			if($sql_dangky){
				echo '<p style="color: green">Bạn đã đăng ký thành công!</p>';
				$_SESSION['dangky']=$tenkhachhang;
                $_SESSION['email']=$email;
                $_SESSION['id_khachhang']=mysqli_insert_id($mysqli);

				header('Location:../index.php');
			}
	}
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
                <form action=""  method="POST">
                    <h1>Đăng ký thành viên </h1>
                    <div class="input-box">
                        <i >Họ và tên</i>
                        <input type="text" name="hovaten" >
                    </div>
                    <div class="input-box">
                        <i >Email</i>
                        <input type="text" name="email" >
                    </div>
                     <div class="input-box">
                        <i >Địa chỉ</i>
                        <input type="text" name="diachi" >
                    </div>
                     <div class="input-box">
                        <i >Mật khẩu</i>
                        <input type="password" name="matkhau" >
                    </div>
                     <div class="input-box">
                        <i >Số điện thoại</i>
                        <input type="text" name="sdt">
                    </div>
                    <div class="btn-box">
                        <button type="submit" name="dangky">
                            Đăng ký
                        </button>
                        <button type="submit" name="dangnhap">
                           <a href="index.php?quanli=dangnhap">Đăng nhập</a>  
                        </button>
                    </div>
                </form>
            </div>
            </div>