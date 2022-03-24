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
	?> 	



	
	  <div class="main-content-container container-fluid px-4">
		<!-- Page Header -->
		<div class="page-header row no-gutters py-4">
		  <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
			<h3>	Kelas : <?php echo $nama;?>		</h3>	
		  </div>
		</div>		
		<!-- End Page Header -->
		
		<div class="row">
			<div class="col-lg-6">
			<form  data-toggle="validator" role="form" method="post" action="index.php?md=edit-spek">			
											
					<div class="form-group">
					<h5>	Mainboard : <?php echo $mb;?></h5>						
					</div>

					<div class="form-group">
					<h5>	Processor : <?php echo $ps;?></h5>						
					</div>

					<div class="form-group">
					<h5>	memory : <?php echo $rm;?></h5>						
					</div>

					<div class="form-group">
					<h5>	Hard Disk : <?php echo $hd;?></h5>						
					</div>

					<div class="form-group">
					<h5>	Operating System : <?php echo $os;?></h5>						
					</div>


					<div class="form-group">
					<h5>	Monitor : <?php echo $mn;?></h5>						
					</div>					

					<div class="form-group">
					<h5>	splitter : <?php echo $sp;?></h5>						
					</div>

					<div class="form-group">
					<h5>	Switch VGA : <?php echo $vg;?></h5>						
					</div>

					<div class="form-group">
					<h5>	Switch hub : <?php echo $hb;?></h5>						
					</div>
					
					<div class="form-group">
					<h5>	Layar LCD : <?php echo $lyr;?></h5>						
					</div>

					<div class="form-group">
					<h5>	Merk Proyektor : <?php echo $lcd;?></h5>						
					</div>

					<div class="form-group">
					<h5>	Jam Lampu : <?php echo $lmp;?></h5>						
					</div>
											
					<div class="form-group">
					<h5>	Tanggal Filter : <?php echo $tgl;?></h5>						
					</div>					
					
			
					<div class="form-group">
					<a href="index.php?md=edit-spek&id=<?php echo $id?>"><button type="button" class="btn ">Edit</button></a>
					  <a href="index.php?md=spek"><button type="button" class="btn ">Kembali</button></a>
					</div>
				</form>	
			</div>
		</div>
	  </div>
		

	