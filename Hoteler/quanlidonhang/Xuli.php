<?php 
	include ('../../admincp/config/config.php');
	if(isset($_GET['code']))
	{
		$code=$_GET['code'];
		$sql_update ="UPDATE tb_datphong SET Status=0 Where Code ='".$code."' ";
		$query =mysqli_query($mysqli,$sql_update);
		header('Location:../../index.php?action=quanlidonhang&query=lietke');
	}
 ?>