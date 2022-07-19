<?php 
	if(	isset($_POST['dangnhap'])){
		$taikhoan = $_POST['email'];
		$matkhaucu = $_POST['matkhaucu'];
		$matkhaumoi = $_POST['matkhaumoi'];
		$sql = "SELECT * FROM tb_khachhang WHERE Email='".$taikhoan."' AND Matkhau='".$matkhaucu."'LIMIT 1";
		$row = mysqli_query($mysqli,$sql);
		$count = mysqli_num_rows($row);
		if($count>0){
			$sql_update = mysqli_query($mysqli,"UPDATE tb_khachhang SET  Matkhau='".$matkhaumoi."' ");
			echo '<script style =" color : green">alert("Mật khẩu đã được thay đổi ")</script>';
			
		}else{
			echo '<script style =" color : red">alert("Tài khoản hoặc Mật khẩu cũ không đúng, vui lòng nhập lại. ")</script>';
			
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
                <form action="" autocomplete="off" method="POST">
                    <h1>Đổi mật khẩu</h1>
                    <div class="input-box">
                        <i >Nhập tài khoản</i>
                        <input type="text" name="email" >
                    </div>
                    <div class="input-box">
                        <i >Nhập mật khẩu cũ</i>
                        <input type="text" name="matkhaucu" >
                    </div>
                    <div class="input-box">
                        <i >Nhập mật khẩu mới</i>
                        <input type="text" name="matkhaumoi" >
                    </div>
                    
                    <div class="btn-box">
                        <button type="submit" name="dangnhap">
                            Đổi mật khẩu
                        </button>
                    </div>
                </form>
            </div>
            </div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>