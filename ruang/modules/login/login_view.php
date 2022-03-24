<?php include("koneksi.php"); ?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charse t="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    

    <!--bootstrap-->
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="styles/css/login.css" type="text/css">
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/jquery.js"></script>

    

</head>
<body class="login-img3-body">

<!-- cek pesan notifikasi -->
<?php 
	if(isset($_GET['pesan'])){
		if($_GET['pesan'] == "gagal"){
			echo "<script type='text/javascript'> alert ('Login gagal! username dan password salah!') </script>";
		}else if($_GET['pesan'] == "logout"){
			echo "Anda telah berhasil logout";
		}else if($_GET['pesan'] == "belum_login"){
			echo "Anda harus login untuk mengakses halaman admin";
		}
	}
	?>
    
<!-- untuk membuat warna overlay pada background image -->	
<div class="overlay">
    <div class="container">
     
        <div class="card card-container">
        <div class='fti text-center'>
            <a  href="#">
                <img src="images/pplk.png" width="110" height="150">
            </a>
            </div>
            <!-- form for login -->
            <form class="form-signin" method="post" action="login.php" >
                <span id="reauth-email" class="reauth-email"></span>
                
                <input type="text" name="username" id="username" class="login_box" placeholder="Masukan Username" autofocus>
                <span class="text-danger"></span>

             
                <input type="password" name="password" id="password" class="login_box" placeholder="Masukan Password" autofocus>
                <span class="text-danger"></span>

                <button class="btn btn-lg btn-primary" type="submit" name="submit" value="login">Login</button>
               
            </form><!-- /form -->
        </div><!-- /card-container -->
    </div><!-- /container -->
</div>
</body>

</html>