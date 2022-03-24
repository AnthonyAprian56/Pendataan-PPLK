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
					mysqli_query($mysqli,"DELETE FROM r_kelas WHERE id_kelas='$_GET[id]'");
				}		
			}
			elseif($_GET[act] == 'edit')
			{
				if($_GET[id] != '')		
				echo "
					<script> 
						window.location.replace('index.php?md=edit-kelas&id=$_GET[id]')
					</script>
				";
			}
		?>		
          <div class="main-content-container container-fluid px-4">
            <!-- Page Header -->
            <div class="page-header row no-gutters py-4">
              <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                <h3 class="page-title">Daftar Data Kelas</h3>
              </div>
            </div>
			<div class="row">
				<div class="col-lg-12">
					<ol class="breadcrumb">
						<li>
							<a href="index.php?md=add-kelas"><button type="button" class="btn btn-primary">Tambah Data Kelas</button></a>
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
									<th>Nama Kelas</th>
									<th>Lantai</th>
									<th>Action </th>
								</tr>
							</thead>
							  <tbody>
								<?php
									$tampil = mysqli_query($mysqli,"SELECT * FROM r_kelas ORDER BY nama_kelas");	
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
													<td>$r[lantai]</td>																																																																																												
													<td>
														<a href='index.php?md=kelas&act=edit&id=$r[id_kelas]' class='fa fa-edit fa-fw' title='Edit'></i></a>
														&nbsp;
														<a href=javascript:confirmdelete('index.php?md=kelas&act=delete&id=$r[id_kelas]') class='fa fa-trash fa-fw' title='Delete'></i></a> 
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
		  