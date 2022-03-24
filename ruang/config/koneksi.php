<?php
// definisikan koneksi ke database

$server = "localhost";
$usermysql = "training";
$password = "pplkUKDW";
$database = "training";

// Koneksi dan memilih database di server
$mysqli= new mysqli ($server,$usermysql,$password,$database);
if ($mysqli->connect_error){
	echo "Gagal terkoneksi ke database : (".$mysqli->connect_eror.")";
}
?>





