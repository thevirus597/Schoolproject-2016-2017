<?php
$conn = mysqli_connect("localhost","root","","rsautowerkplaats");


//connection checkd
if (!$conn) {
  die("Connectie Mislukt ".mysqli_connect_error());
}

?>
