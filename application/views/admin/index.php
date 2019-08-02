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
				</div>
				<div class="box-footer">
					
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->