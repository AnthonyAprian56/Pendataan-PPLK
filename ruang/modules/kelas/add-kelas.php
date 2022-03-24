	<?php
		error_reporting(0);

		if ($_POST["submit"]) 
		{
		
			$nm 	= $_POST['nama'];
			$lt 	= $_POST['lantai'];

			
			$cek = mysqli_query($mysqli,"SELECT * FROM r_kelas WHERE nama_kelas ='$nm'");		
		
			if(mysqli_num_rows($cek) == 0)
			{
				mysqli_query($mysqli,"INSERT INTO r_kelas (nama_kelas,lantai)
													VALUES('$nm','$lt')");			
				
				echo "
					<script> window.location.replace('index.php?md=kelas')</script>
				";			

			}
			else
			{
				$result='<div class="alert alert-danger">Nama kelas sudah digunakan,data tidak disimpan.</div>';
			}			

		}	
	?> 	<?php
		error_reporting(0);

		if ($_POST["submit"]) 
		{
			
			$nm 	= $_POST['nama'];
			$lantai		= $_POST['lantai'];
			
			$cek = mysqli_query($mysqli,"SELECT * FROM r_kelas WHERE nama_kelas ='$nm'");		
		
			if(mysqli_num_rows($cek) == 0)
			{
				mysqli_query($mysqli,"INSERT INTO r_kelas (nama_kelas,lantai)
													VALUES('$nm','$lt')");			
				
				echo "
					<script> window.location.replace('index.php?md=kelas')</script>
				";			

			}
			else
			{
				$result='<div class="alert alert-danger">Nama kelas sudah digunakan,data tidak disimpan.</div>';
			}			

		}	
	?> 	

	  <div class="main-content-container container-fluid px-4">
		<!-- Page Header -->
		<div class="page-header row no-gutters py-4">
		  <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
			<h3 class="page-title">Tambah Data Kelas</h3>
		  </div>
		</div>		
		<!-- End Page Header -->
		
		<div class="row">
			<div class="col-lg-6">
			<form role="form" method="post" enctype="multipart/form-data" action="index.php?md=add-kelas">
				<div class="form-group">
					<?php echo "$result"; ?>
				</div>			
				<div class="form-group">
				  <label for="suggest" class="control-label">Nama kelas</label>
				  <input type="text" class="form-control" id="nama" name="nama"  required value="<?php echo"$nm";?>"/>
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
				  <a href="index.php?md=kelas"><button type="button" class="btn ">Batal</button></a>
				</div>
			</form>			
			</div>
		</div>
	  </div>
		  