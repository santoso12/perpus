<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Form Update Status Publikasi
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Update Status Publikasi</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="box box-info">
		<div class="box-header with-border">
		  <h3 class="box-title"></h3>
		</div>
		<!-- form start -->
		<form class="form-horizontal" action="<?php echo site_url('publikasi/update_status_publikasi') ?>" method="post" enctype="multipart/form-data">
		  <div class="box-body">
			<div class="form-group">
			  <label class="col-md-2 control-label">Status Publikasi</label>

			  <div class="col-md-6">
				<select name="status_publikasi" class="form-control">
					<option value="1" <?php if($status->status_publikasi ==1){echo "selected";}?>>Sudah pernah publikasi</option>
					<option value="2" <?php if($status->status_publikasi ==2){echo "selected";}?>>Eprints</option>
				</select>
			  </div>
			</div>
			
		  </div>
		  <!-- /.box-body -->
		  <div class="box-footer">
		  <div class="col-md-2"></div>
		  
		  <div class="col-md-6">
		  
			<button type="submit" class="btn btn-info pull-right">Submit</button>
		  </div>
		  </div>
		  <!-- /.box-footer -->
		</form>
	</div>
			<!-- /.box -->
</section>
<!-- /.content -->