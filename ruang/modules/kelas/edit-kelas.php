	<?php
		error_reporting(0);
		$tampil = mysqli_query($mysqli,"SELECT * FROM r_kelas WHERE id_kelas ='$_GET[id]'");	
									
		$r=mysqli_fetch_array($tampil);
		
	
			$nm 	= $r[nama_kelas];
			$nama 	= $r[nama_kelas];
			$id 	= $r[id_kelas];
			$lt		= $r[lantai];
				
			

		if ($_POST["submit"]) 
		{
			$id		= $_POST['id'];
			$nm 	= $_POST['nama'];
			$nama		= $_POST['nama_kelas'];
			$lt 	= $_POST['lantai'];
			
							
			$cek_nama = mysqli_query($mysqli,"SELECT * FROM r_kelas WHERE nama_kelas ='$nm' AND nama_kelas != '$nama'");		
			if(mysqli_num_rows($cek_nama) == 0) 
			{
				mysqli_query($mysqli,	"UPDATE kelas SET nama_kelas ='$nm', lantai = '$lt'
										WHERE id_kelas='$id'");			
				
				echo "
					<script> window.location.replace('index.php?md=kelas')</script>
				"; 			
			}
			else
			{
				$result='<div class="alert alert-danger">Nama kelas sudah terdaftar dalam sistem.</div>';   
			}	
		}	
	?> 	



	
	  <div class="main-content-container container-fluid px-4">
		<!-- Page Header -->
		<div class="page-header row no-gutters py-4">
		  <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
			<h3 class="page-title">Edit Data Kelas</h3>
		  </div>
		</div>		
		<!-- End Page Header -->
		
		<div class="row">
			<div class="col-lg-6">
			<form role="form" method="post" enctype="multipart/form-data" action="index.php?md=edit-kelas&id=<?php echo "$id"; ?>">
				<div class="form-group">
					<?php echo "$result"; ?>
				</div>			
				<div class="form-group">
				  <label for="suggest" class="control-label">Nama Kelas</label>
				  <input type="hidden" class="form-control"  id="nama_kelas" name="nama_kelas" required value="<?php echo"$nm";?>"/>
				  <input type="hidden" class="form-control" id="id" name="id"  required value="<?php echo"$id";?>"/>
					<input type="text" class="form-control" id="nama" name="nama"  required value="<?php echo"$nama";?>"/>
				</div>				

				<div class="form-group">
						<label>Lantai</label>
						<select id="lantai" name="lantai" class="form-control" required>
						<option value="" > -- Pilih lantai -- </option>													
							<li> 
									<option value="Lantai 1">Lantai 1</option>
									<option value="Lantai 2">Lantai 2</option>
									<option value="Lantai 3">Lantai 3</option>
									<option value="Lantai 4">Lantai 4</option>
									<option value="Lantai 5">Lantai 5</option>
									<option value="LAB">LAB</option>																									
							</li>
						</select>										
					</div>								
			
				<div class="form-group">
				  <button id="submit" name="submit" type="submit" value="Send" class="btn ">Simpan</button>
				  <a href="index.php?md=fakultas"><button type="button" class="btn ">Batal</button></a>
				</div>
			</form>			
			</div>
		</div>
	  </div>
		  