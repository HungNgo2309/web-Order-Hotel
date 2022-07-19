<?php
$mysqli = new mysqli("localhost","root","","hotel_VN");

// Check connection
if ($mysqli->connect_errno) {
  echo "Lỗi kết nối SQL" . $mysqli ->connect_error;
  exit();
}
?>