		<script>
		function confirmdelete(delUrl) {
		   if (confirm("Yakin menghapus data?")) {
			  document.location = delUrl;
		   }
		}
		</script>		
	

	<?php
			if($_GET[act] == "delete")
			{
				if($_GET[id] != '')
				{
					mysqli_query($mysqli,"DELETE FROM r_spek WHERE id_spek='$_GET[id]'");
				}		
			}
			elseif($_GET[act] == 'edit')
			{
				if($_GET[id] != '')		
				echo "
					<script> 
						window.location.replace('index.php?md=edit-spek&id=$_GET[id]')
					</script>
				";
			}			
			elseif($_GET[act] == 'detail')
			{
				if($_GET[id] != '')		
				echo "
					<script> 
						window.location.replace('index.php?md=detail-spek&id=$_GET[id]')
					</script>
				";
			}
		?>			  
          <div class="main-content-container container-fluid px-4">
            <!-- Page Header -->
            <div class="page-header row no-gutters py-4">
              <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                <h3 class="page-title">Inventaris Kelas</h3>
              </div>
            </div>
			<div class="row">
				<div class="col-lg-12">
					<ol class="breadcrumb">
						<li>
							<a href="index.php?md=add-spek"><button type="button" class="btn btn-md btn-primary">Tambah Data Inventaris Kelas</button></a>
						</li>
					</ol>
				</div>
			</div>			
			<!-- End Page Header -->
			
			<div class="row">
				<div class="col-lg-12">
					<div class="table-responsive">
						<table class="table table-bordered table-striped table-sm">
							<thead>
								<tr>
									<th>No</th>
									<th>Kelas</th>
									<th>Main Board</th>									
									<th>Processor</th>
									<th>RAM</th>
									<th>Hard Disk</th>
									<th>Projector</th>
									<th>Jam Lampu</th>
									<th>Tanggal Filter</th>
									<th>Action</th>
								</tr>
							</thead>
							  <tbody>
								<?php
								if($_GET[keyword] !="")
								{
									$tampil = mysqli_query($mysqli,"select * from r_spek inner join r_kelas on r_kelas.id_kelas = r_spek.id_kelas WHERE nama_kelas LIKE '%$_GET[keyword]%'");	

								}
								else
								{

									$tampil = mysqli_query($mysqli,"select * from r_spek inner join r_kelas on r_kelas.id_kelas = r_spek.id_kelas");	

								}
									$no=1;
									if(mysqli_num_rows($tampil) == 0)
									{
										
									}
									else
									{
										while ($r=mysqli_fetch_array($tampil))
										{    
											echo"
												<tr>
													<td>$no</td>															
													<td>$r[nama_kelas]</td>															
													<td>$r[main_board]</td>														
													<td>$r[processor]</td>															
													<td>$r[memory]</td>
													<td>$r[hard_disk]</td>
													<td>$r[proyektor]</td>
													<td>$r[jam_lampu]</td>
													<td>$r[tgl_filter]</td>																																																																																												
													<td>
																											
														<a href='index.php?md=spek&act=detail&id=$r[id_spek]' class='fa fa-search fa-fw' title='Detail'></i></a>
														&nbsp;	
														<a href='index.php?md=spek&act=edit&id=$r[id_spek]' class='fa fa-edit fa-fw' title='Edit'></i></a>
														&nbsp;
														<a href=javascript:confirmdelete('index.php?md=spek&act=delete&id=$r[id_spek]') class='fa fa-trash fa-fw' title='Delete'></i></a> 
														</td>
												</tr>	
											";
											$no++;
										}							
									}	
								?>				
							  </tbody>
						</table>
					</div>
			</div>
          </div>
          </div>
		  