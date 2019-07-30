<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Publikasi
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Publikasi</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="box box-primary">
		<div class="box-body">
			<div class="row" style="margin-bottom: 10px">
				<div class="col-md-4">
					<?php //echo anchor(site_url('publikasi_admin/create'),'Create', 'class="btn btn-primary"'); ?>
				</div>
				<div class="col-md-4 text-center">
					<div style="margin-top: 8px" id="message">
						<?php echo $this->session->userdata('message') <> '' ? $this->session->userdata('message') : ''; ?>
					</div>
				</div>
				<div class="col-md-1 text-right">
				</div>
				<div class="col-md-3 text-right">
					<form action="<?php echo site_url('admin/publikasi'); ?>" class="form-inline" method="get">
						<div class="input-group">
							<input type="text" class="form-control" name="q" value="<?php echo $q; ?>">
							<span class="input-group-btn">
								<?php 
									if ($q <> '')
									{
										?>
										<a href="<?php echo site_url('admin/publikasi'); ?>" class="btn btn-default">Reset</a>
										<?php
									}
								?>
							  <button class="btn btn-primary" type="submit">Search</button>
							</span>
						</div>
					</form>
				</div>
			</div>
			<table class="table table-bordered" style="margin-bottom: 10px">
				<tr>
			<th>No</th>
			<th>Id User</th>
			<th>Id Jenis Publikasi</th>
			<th>Judul</th>
			<th>Publisher</th>
			<th>Tanggal Submission</th>
			<th>Status Draft Artikel</th>
			<th>Status Verifikasi</th>
			<th>Is Approved</th>
			<th>Approved Date</th>
			<th>Create Date</th>
			
			<th>Action</th>
				</tr><?php
				foreach ($publikasi_admin_data as $publikasi_admin)
				{
					?>
					<tr>
				<td width="80px"><?php echo ++$start ?></td>
				<td><?php echo $publikasi_admin->id_user ?></td>
				<td><?php echo $publikasi_admin->id_jenis_publikasi ?></td>
				<td><?php echo $publikasi_admin->judul ?></td>
				<td><?php echo $publikasi_admin->publisher ?></td>
				<td><?php echo $publikasi_admin->tanggal_submission ?></td>
				<td><?php echo $publikasi_admin->status_draft_artikel ?></td>
				<td><?php echo $publikasi_admin->status_verifikasi ?></td>
				<td>
					<?php if($publikasi_admin->is_approved==1){ 
						echo "Approved";
					} else if($publikasi_admin->is_approved==2) {
						echo "Ditolak"; 
					}?>
				</td>
				<td><?php echo $publikasi_admin->approved_date ?></td>
				<td><?php echo $publikasi_admin->create_date ?></td>
				
				<td style="text-align:center" width="200px">
					<?php 
					echo anchor(site_url('admin/view/'.$publikasi_admin->id),'View'); 
					echo ' | '; 
					echo anchor(site_url('admin/approve/'.$publikasi_admin->id),'Approve'); 
					echo ' | '; 
					echo anchor(site_url('admin/tolak/'.$publikasi_admin->id),'Tolak','onclick="javasciprt: return confirm(\'Are You Sure ?\')"'); 
					?>
				</td>
			</tr>
					<?php
				}
				?>
			</table>
			<div class="row">
				<div class="col-md-6">
					<a href="#" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
				<?php echo anchor(site_url('admin/excel'), 'Excel', 'class="btn btn-primary"'); ?>
				</div>
				<div class="col-md-6 text-right">
					<?php echo $pagination ?>
				</div>
			</div>
		 </div>
     </div>
	<!-- /.row -->
</section>
<!-- /.content -->