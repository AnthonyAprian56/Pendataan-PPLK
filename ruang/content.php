<?php 
	error_reporting(0);
	if ($_GET['md']=='')
	{
		include "modules/spek/spek.php";
	}
	//dosen	
	elseif ($_GET['md']=='spek')
	{
		include "modules/spek/spek.php";
	}  
	elseif ($_GET['md']=='add-spek')
	{
		include "modules/spek/add-spek.php";
	} 	
	elseif ($_GET['md']=='edit-spek')
	{
		include "modules/spek/edit-spek.php";
	} 	
	elseif ($_GET['md']=='detail-spek')
	{
		include "modules/spek/detail.php";
	}  	
	//fakultas	
	elseif ($_GET['md']=='kelas')
	{
		include "modules/kelas/kelas.php";
	}  
	elseif ($_GET['md']=='add-kelas')
	{
		include "modules/kelas/add-kelas.php";
	} 	
	elseif ($_GET['md']=='edit-kelas')
	{
		include "modules/kelas/edit-kelas.php";
	}  	

	//batal
	elseif ($_GET['md']=='cancel')
	{
		include "cancel.php";
	} 
			
?>      
