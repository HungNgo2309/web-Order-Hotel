<?php 
session_start();
if(!isset($_SESSION['dangnhap'])){
	header('Location:login.php');
	}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admincp</title>
	<link rel="stylesheet" type="text/css" href="../admincp/css/styleadmincp.css">

</head>
<body>
	<div id =page >
	<h2>WELCOME HOTELER TO WEBSITE</h2>
	<?php 
			include ("../admincp/config/config.php");	
			
			include ("menu.php");
			include ("main.php");
			
		 ?>
	</div>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://cdn.ckeditor.com/4.19.0/standard/ckeditor.js"></script>
	 <script>
             CKEDITOR.replace( 'tomtat' );
             CKEDITOR.replace( 'noidung' );
    </script>
</body>
</html>