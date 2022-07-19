<?php 
	session_start();
	include ('../admincp/config/config.php');
	//them so luong
	if(isset($_GET['cong'])){
		$id =$_GET['cong'];
		foreach ($_SESSION['cart'] as $cart_item){
			if($cart_item['id']!=$id){
				$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>$cart_item['Soluong'] ,'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
				$_SESSION['cart'] = $product;
			}else{
				$tangsoluong = $cart_item['Soluong']+1;
				if($cart_item['Soluong']<=9)
				{
					$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>			$tangsoluong ,'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
				}else{
					$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>         $cart_item['Soluong'],'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
				}
				$_SESSION['cart'] = $product;
			}
			
		}
		header('Location:../index.php?quanli=khachsandaluu');
	}
	// tru so luong
	if(isset($_GET['tru'])){
		$id =$_GET['tru'];
		foreach ($_SESSION['cart'] as $cart_item){
			if($cart_item['id']!=$id){
				$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>$cart_item['Soluong'] ,'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
				$_SESSION['cart'] = $product;
			}else{
				$tangsoluong = $cart_item['Soluong'] - 1;
				if($cart_item['Soluong']>1)
				{
					$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>			$tangsoluong ,'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
				}else{
					$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>         $cart_item['Soluong'],'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
				}
				$_SESSION['cart'] = $product;
			}
			
		}
		header('Location:../index.php?quanli=khachsandaluu');
	}
	//xoa hotel
	if(isset($_SESSION['xoa'])&&isset($_GET['xoa'])){
		$id = $_GET['xoa'];
		foreach ($_SESSION['cart'] as $cart_item){
			if($cart_item['id']!=$id){
				$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>$cart_item['Soluong'] ,'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
			}
			$_SESSION['cart'] = $product;
			header('Location:../index.php?quanli=khachsandaluu');
		}
	}
	//xoatatca
	if(isset($_GET['xoatatca'])&&$_GET['xoatatca']==1){
		unset($_SESSION['cart']);
		header('Location:../index.php?quanli=khachsandaluu');
	}
	if (isset($_POST['themgiohang'])){
		$id = $_GET['idhotel'];
		$soluong = 1;
		$sql = "SELECT * FROM tb_hotel WHERE ID_Hotel ='".$id."' LIMIT 1" ;
		$query = mysqli_query($mysqli,$sql);
		$row = mysqli_fetch_array($query);
		//kiểm tra session tồn tại
		if($row)
		{
			$new_product = array( array('TenHotel' =>$row['TenHotel'],'id' => $id,'Soluong'=>$soluong ,'Giaphong'=>$row['Giaphong'],'Hinhanh'=>$row['Hinhanh'],'MaHotel'=>$row['MaHotel']));
		
				if(isset($_SESSION['cart']))
				{
						$found = false;
						foreach ($_SESSION['cart'] as $cart_item) {
							//nén dữ liệu trùng
							if($cart_item['id']==$id){
								$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>$soluong+1 ,'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
							$found= true;
							//nén dữ liệu không trùng
							}else{ 
									$product[] =array('TenHotel' =>$cart_item['TenHotel'],'id' => $cart_item['id'],'Soluong'=>$cart_item['Soluong'] ,'Giaphong'=>$cart_item['Giaphong'],'Hinhanh'=>$cart_item['Hinhanh'],'MaHotel'=>$cart_item['MaHotel']);
							}
						}
						if ($found ==false){
							//liên kết dữ liệu new Product vs new_product
							$_SESSION['cart']=array_merge($product,$new_product);
						}
						else {
							$_SESSION['cart']= $product;
						}
				}else{
					$_SESSION['cart']= $new_product;
				}
			} 
			header('Location:../index.php?quanli=khachsandaluu');
			
	}
 ?>