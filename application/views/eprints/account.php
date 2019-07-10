<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Eprints
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Eprints Account</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">
		
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Account</h3>
				</div>
				<!-- /.box-header -->
				<?php
					$acc = $account->row();
				?>
				<div class="box-body">
					<div class="col-sm-2">
						User ID
					</div>
					<div class="col-sm-10">
						: <?php echo $acc->userid; ?>
					</div>
					
					<div class="col-sm-2">
						Username
					</div>
					<div class="col-sm-10">
						: <?php echo $acc->username; ?>
					</div>
					
					<div class="col-sm-2">
						Nama
					</div>
					<div class="col-sm-10">
						: <?php echo $acc->name_family; ?>
					</div>
					
					<div class="col-sm-2">
						Email
					</div>
					<div class="col-sm-10">
						: <?php echo $acc->email; ?>
					</div>
					
					<div class="col-sm-2">
						Alamat
					</div>
					<div class="col-sm-10">
						: <?php echo $acc->address; ?>
					</div>
				</div>
				<div class="box-footer">
					<a href="<?php echo site_url('eprints/edit_account/'.$acc->username) ?>">
						<button class="btn btn-info pull-right">Edit</button>
					</a>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
			
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">Item</h3>
				</div>
				<!-- /.box-header -->
				<?php
					if($item->num_rows() > 0){
					$itm = $item->row();
				?>
				<div class="box-body">
					<div class="col-sm-2">
						Status
					</div>
					<div class="col-sm-10">
						: <?php echo $itm->eprint_status; ?>
					</div>
					
					<div class="col-sm-2">
						Item ID
					</div>
					<div class="col-sm-10">
						: <?php echo $itm->eprintid; ?>
					</div>
					
					<div class="col-sm-2">
						Type
					</div>
					<div class="col-sm-10">
						: <?php echo $itm->type; ?>
					</div>
					
					<div class="col-sm-2">
						Judul
					</div>
					<div class="col-sm-10">
						: <?php echo $itm->title; ?>
					</div>
					
					<div class="col-sm-2">
						Abstract
					</div>
					<div class="col-sm-10">
						: <?php echo $itm->abstract; ?>
					</div>
					
					<div class="col-sm-2">
						Institution
					</div>
					<div class="col-sm-10">
						: <?php echo $itm->department." ".$itm->institution; ?>
					</div>
					
					<div class="col-sm-2">
						Date Deposited
					</div>
					<div class="col-sm-10">
						: 
						<?php 
							if($itm->eprint_status == 'archive'){
								$jd=gregoriantojd($itm->datestamp_month,$itm->datestamp_day,$itm->datestamp_year);
								echo $itm->datestamp_day." ".jdmonthname($jd,0)." ".$itm->datestamp_year." ".($itm->datestamp_hour + 7) .":".$itm->datestamp_minute; 
							}else{
								echo "Belum Deposit";
							}
						?>
					</div>
					
					<div class="col-sm-2">
						Last Modified
					</div>
					<div class="col-sm-10">
						: 
						<?php 
							$jd=gregoriantojd($itm->lastmod_month,$itm->lastmod_day,$itm->lastmod_year);
							echo $itm->lastmod_day." ".jdmonthname($jd,0)." ".$itm->lastmod_year." ".($itm->lastmod_hour + 7) .":".$itm->lastmod_minute; 
						?>
					</div>
					
					<div class="col-sm-2">
						URI
					</div>
					<div class="col-sm-10">
						: <a href="https://eprints.uns.ac.id/id/eprint/<?php echo $itm->eprintid; ?>" target="_blank">https://eprints.uns.ac.id/id/eprint/<?php echo $itm->eprintid; ?></a>
					</div>
				</div>
				<?php } ?>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->