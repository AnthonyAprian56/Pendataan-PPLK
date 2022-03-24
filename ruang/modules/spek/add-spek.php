	<?php
		error_reporting(0);

		if ($_POST["submit"]) 
		{
			$kelas	= $_POST['kelas'];
			$mb 	= $_POST['mainboard'];			
			$ps	= $_POST['processor'];
			$rm 	= $_POST['ram'];
			$hd	= $_POST['hard_disk'];
			$os	= $_POST['os'];
			$mn	= $_POST['monitor'];
			$sp	= $_POST['splitter'];
			$vg	= $_POST['vga'];
			$hb	= $_POST['hub'];
			$lcd	= $_POST['lcd'];
			$lyr	= $_POST['layar'];
			$lmp	= $_POST['lamp'];
			$tgl	= $_POST['tgl_reset'];
			
			$cek = mysqli_query($mysqli,"SELECT * FROM r_spek WHERE id_kelas ='$kelas'");		
		
			if(mysqli_num_rows($cek) == 0)
			{
				mysqli_query($mysqli,"INSERT INTO r_spek(id_kelas,main_board,processor,memory,hard_disk,os,monitor, splitter, switch_vga, switch_hub, layar, proyektor, jam_lampu, tgl_filter)
													VALUES('$kelas','$mb','$ps','$rm','$hd','$os','$mn','$sp','$vg','$hb','$lcd','$lyr','$lmp','$tgl')");			
				
				echo "
					<script> window.location.replace('index.php?md=spek')</script>
				";			

			}
			else
			{
				$result='<div class="alert alert-danger">Kelas sudah diinventaris,data tidak disimpan.</div>';
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
				<form  data-toggle="validator" role="form" method="post" action="index.php?md=add-spek">
					<div class="control-group form-group">
						<div class="controls">
							<?php echo "$result"; ?>	
						</div>
					</div>				
					<div class="form-group">
						<label>Kelas</label>
						<select id="kelas" name="kelas" class="form-control" required>
						<option value="" > -- Pilih Kelas -- </option>													
							<li> 
								<?php						
									$row=mysqli_query($mysqli,"SELECT * FROM r_kelas  ORDER BY nama_kelas");
									while($r=mysqli_fetch_array($row))
									echo "<option value=$r[id_kelas]>$r[nama_kelas]</option>";
								?>																												
							</li>
						</select>										
					</div>							
					<div class="form-group">
					  <label for="suggest" class="control-label">Mainboard</label>
					  <input type="text" class="form-control" id="mainboard" name="mainboard"  required  value= "<?php echo $mb?>" />
					</div>												
					<div class="form-group">
					  <label for="suggest" class="control-label">Processor</label>
					  <input type="text" class="form-control" id="processor" name="processor"  required value="<?php echo $ps?>" />
					</div>							
					<div class="form-group">
					  <label for="suggest" class="control-label">RAM</label>
					  <input type="text" class="form-control" id="ram" name="ram"  required value="<?php echo $rm?>"/>
					</div>					

					<div class="form-group">
					  <label for="suggest" class="control-label">Hard Disk</label>
					  <input type="text" class="form-control" id="hard_disk" name="hard_disk"  required value="<?php echo $hd?>"/>
					</div>							
					<div class="form-group">
					  <label for="suggest" class="control-label">Operating System</label>
					  <input type="text" class="form-control" id="os" name="os"  required value="<?php echo $os?>"/>
					</div>		

					<div class="form-group">
					  <label for="suggest" class="control-label">Monitor</label>
						<div class="radio">
							<label class="radio-inline"><input id="monitor" type="radio" name="monitor" value="Ada" checked>Ada</label> &nbsp;
							<label class="radio-inline"><input id="monitor" type="radio" name="monitor" value="Tidak Ada" >Tidak ada</label>
							</div>
					</div>	


					<div class="form-group">
					  <label for="suggest" class="control-label">Splitter</label>
						<div class="radio">
							<label class="radio-inline"><input id="splitter" type="radio" value="Ada" name="splitter" checked>Ada</label> &nbsp;
							<label class="radio-inline"><input id="splitter" type="radio" value="Tidak Ada" name="splitter">Tidak ada</label>
							</div>
					</div>	

					<div class="form-group">
					  <label for="suggest" class="control-label">VGA Selector</label>
						<div class="radio">
							<label class="radio-inline"><input id="vga" type="radio" value="Ada" name="vga" checked>Ada</label> &nbsp;
							<label class="radio-inline"><input id="vga" type="radio" value="Tidak Ada" name="vga">Tidak ada</label>
							</div>
					</div>	

					<div class="form-group">
					  <label for="suggest" class="control-label">Switch HUB</label>
						<div class="radio">
							<label class="radio-inline"><input id="hub" type="radio" value="Ada" name="hub" checked>Ada</label> &nbsp;
							<label class="radio-inline"><input id="hub" type="radio" value="Tidak Ada" name="hub">Tidak ada</label>
							</div>
					</div>	

					<hr>

					<div class="form-group">
					  <label for="suggest" class="control-label">LCD Proyektor</label>
					  <input type="text" class="form-control" id="lcd" name="lcd"  required value="<?php echo $lcd?>" />
					</div>	

					<div class="form-group">
					  <label for="suggest" class="control-label">Layar Proyektor</label>
					  <input type="text" class="form-control" id="layar" name="layar"  required value="<?php echo $lyr?>"/>
					</div>

					<div class="form-group">
					  <label for="suggest" class="control-label">Time Lamp</label>
					  <input type="text" class="form-control" id="lamp" name="lamp"  required value="<?php echo $lmp?>"/>
					</div>							
										
					<div class="form-group">
					  <label for="suggest" class="control-label">Tanggal Reset Filter</label>
					  <input type="date" class="form-control" id="tgl_reset" name="tgl_reset" required value="<?php echo $tgl?>" />
					</div>							
					
			
					<div class="form-group">
					  <button id="submit" name="submit" type="submit" value="Send" class="btn ">Simpan</button>
					  <a href="home.php?md=suggestions"><button type="button" class="btn ">Batal</button></a>
					</div>
				</form>		  
			</div>
		</div>
	  </div>
		  