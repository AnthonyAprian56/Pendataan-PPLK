	<?php
		error_reporting(0);
		$tampil = mysqli_query($mysqli,"select * from r_spek inner join r_kelas on r_kelas.id_kelas = r_spek.id_kelas
										WHERE id_spek ='$_GET[id]'");	
									
		$r=mysqli_fetch_array($tampil);
		
				
			$kelas	= $r['id_kelas'];
			$nama = $r['nama_kelas'];
			$id	= $r['id_spek'];
			$mb 	= $r['main_board'];			
			$ps	= $r['processor'];
			$rm 	= $r['memory'];
			$hd	= $r['hard_disk'];
			$os	= $r['os'];
			$mn	= $r['monitor'];
			$sp	= $r['splitter'];
			$vg	= $r['switch_vga'];
			$hb	= $r['switch_hub'];
			$lcd	= $r['proyektor'];
			$lyr	= $r['layar'];
			$lmp	= $r['jam_lampu'];
			$tgl	= $r['tgl_filter'];

		if ($_POST["submit"]) 
		{
			$id	= $_POST['id'];
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

				mysqli_query($mysqli,"UPDATE r_spek SET 
																							main_board = '$mb', 
																							processor='$ps', 
																							memory = '$rm', 
																							hard_disk='$hd', 
																							os = '$os', 
																							monitor='$mn', 
																							splitter = '$sp', 
																							switch_vga='$vg', 
																							switch_hub = '$hb', 
																							layar='$lyr', 
																							proyektor = '$lcd', 
																							jam_lampu='$lmp', 
																							tgl_filter = '$tgl'
									WHERE id_spek = '$id'");			
				
				echo "
					<script> window.location.replace('index.php?md=spek')</script>
				"; 			
	
		}	
	?> 	



	
	  <div class="main-content-container container-fluid px-4">
		<!-- Page Header -->
		<div class="page-header row no-gutters py-4">
		  <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
			<h3 class="page-title">Edit Data Inventaris</h3>
		  </div>
		</div>		
		<!-- End Page Header -->
		
		<div class="row">
			<div class="col-lg-6">
			<form  data-toggle="validator" role="form" method="post" action="index.php?md=edit-spek">
					<div class="control-group form-group">
						<div class="controls">
							<?php echo "$result"; ?>	
						</div>
					</div>				
					<div class="form-group">
						<label>Kelas</label>
						<select id="kelas" name="kelas" class="form-control " disabled>
						<?php echo "<option value=$kelas>$nama</option>";?>												
							<li> 
								<?php						
									$row=mysqli_query($mysqli,"SELECT * FROM kelas  ORDER BY nama_kelas");
									while($r=mysqli_fetch_array($row))
									echo "<option value=$r[id_kelas]>$r[nama_kelas]</option>";
								?>																												
							</li>
						</select>										
					</div>							
					<div class="form-group">
					  <label for="suggest" class="control-label">Mainboard</label>
					  <input type="text" class="form-control" id="mainboard" name="mainboard"  required  value= "<?php echo $mb?>" />
						<input type="hidden" class="form-control" id="id" name="id"  required  value= "<?php echo $id?>" />
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
							<label class="radio-inline"><input id="monitor" type="radio" name="monitor" value="Ada" <?php if( $mn == "Ada") {echo "checked";}?>>Ada</label> &nbsp;
							<label class="radio-inline"><input id="monitor" type="radio" name="monitor" value="Tidak Ada" <?php if( $mn == "Tidak Ada") {echo "checked";}?>>Tidak ada</label>
							</div>
					</div>	


					<div class="form-group">
					  <label for="suggest" class="control-label">Splitter</label>
						<div class="radio">
							<label class="radio-inline"><input id="splitter" type="radio" value="Ada" name="splitter" <?php if( $sp == "Ada") {echo "checked";}?>>Ada</label> &nbsp;
							<label class="radio-inline"><input id="splitter" type="radio" value="Tidak Ada" name="splitter"<?php if( $sp == "Tidak Ada") {echo "checked";}?>>Tidak ada</label>
							</div>
					</div>	

					<div class="form-group">
					  <label for="suggest" class="control-label">VGA Selector</label>
						<div class="radio">
							<label class="radio-inline"><input id="vga" type="radio" value="Ada" name="vga" <?php if( $vg == "Ada") {echo "checked";}?>>Ada</label> &nbsp;
							<label class="radio-inline"><input id="vga" type="radio" value="Tidak Ada" name="vga" <?php if( $vg == "Tidak Ada") {echo "checked";}?>>Tidak ada</label>
							</div>
					</div>	

					<div class="form-group">
					  <label for="suggest" class="control-label">Switch HUB</label>
						<div class="radio">
							<label class="radio-inline"><input id="hub" type="radio" value="Ada" name="hub" <?php if( $hb == "Ada") {echo "checked";}?>>Ada</label> &nbsp;
							<label class="radio-inline"><input id="hub" type="radio" value="Tidak Ada" name="hub" <?php if( $hb == "Tidak Ada") {echo "checked";}?>>Tidak ada</label>
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
		

	<script>		
	 $(document).on('click', '.view_data', function(){
	  //$('#dataModal').modal();
	  var employee_id = $(this).attr("id");
	  $.ajax({
	   url:"select.php",
	   method:"POST",
	   data:{employee_id:employee_id},
	   success:function(data){
		$('#employee_detail').html(data);
		$('#dataModal').modal('show');
	   }
	  });
	 });
	}); 
	</script>		