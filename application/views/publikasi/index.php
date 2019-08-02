<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Profil
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Your Account</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">
		
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Your Account</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					
					<div class="col-sm-2">
						Username
					</div>
					<div class="col-sm-10">
						: <?php echo $account->username; ?>
					</div>
					
					<div class="col-sm-2">
						Nama
					</div>
					<div class="col-sm-10">
						: <?php echo $account->nama; ?>
					</div>
					
					<div class="col-sm-2">
						Email
					</div>
					<div class="col-sm-10">
						: <?php echo $account->email; ?>
					</div>
					
					<div class="col-sm-2">
						No. Hp.
					</div>
					<div class="col-sm-10">
						: <?php echo $account->no_hp; ?>
					</div>
					
					<div class="col-sm-2">
						Alamat
					</div>
					<div class="col-sm-10">
						: <?php if($account->alamat){ echo $account->alamat;} else {echo "-";} ?>
					</div>
					
					<div class="col-sm-2">
						Status Publikasi
					</div>
					<div class="col-sm-10">
						: <?php
							$status = $status_publikasi->status_publikasi;
							if($status == 1){
								echo "Sudah pernah publikasi";
							} else {
								echo "Eprints";
							}
							
						if($cekSudahUpload == null){
						?>
						<a href="publikasi/edit_status_publikasi/<?= $account->id?>">(<i class="fa fa-edit"></i> Edit )</a>
						<?php } ?>
					</div>
				</div>
				<div class="box-footer">
					
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
			
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Publikasi</h3>
					
					<a href="/publikasi/create" class="btn btn-primary pull-right">
					<i class="fa fa-plus"></i> Tambah Publikasi</a>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
				
					<table class="table table-stripped table-bordered">
						<tr>
							<th style="width:25px;">No.</th>
							<th>Judul</th>
							<th>Status Draft</th>
							<th>Verifikasi</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
						<?php 
							$i=1;
							foreach($publikasi as $data){ ?>
							<tr>
								<td><?= $i;?> </td>
								<td><?= $data->judul;?> </td>
								<td><?php
										if($data->status_draft_artikel == 1){
											echo "Submited";
										} else {
											echo "Accepted";
										}
									?> 
								</td>
								<td><?= $data->status_verifikasi;?> </td>
								<td><?php
										if($data->is_approved == 1){
											echo "Approved";
										} else {
											echo "Diusulkan";
										}
									?> 
								
								</td>
								<td><a href="publikasi/view/<?= $data->id;?>" class="btn btn-sm btn-primary">Detail</a></td>
							</tr>					
						<?php $i++; } ?>
					</table>
			
				<!-- /.box-body -->
				</div>
			</div>
			<!-- /.box -->
		</div>
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->