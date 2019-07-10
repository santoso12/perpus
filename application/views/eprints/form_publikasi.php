<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Form Publikasi
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Create Eprints Account</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="box box-info">
		<div class="box-header with-border">
		  <h3 class="box-title"></h3>
		</div>
		<!-- form start -->
		<form class="form-horizontal" action="<?php echo site_url('eprints/publikasi') ?>" method="post">
		  <div class="box-body">
			<div class="form-group">
			  <label class="col-sm-2 control-label">Judul Publikasi</label>

			  <div class="col-sm-10">
				<input type="text" name="judul" class="form-control" value="" placeholder="Judul Publikasi">
			  </div>
			</div>
			<div class="form-group">
			  <label class="col-sm-2 control-label">Jenis</label>

			  <div class="col-sm-10">
				<input type="text" class="form-control" name="jenis" placeholder="" required>
			  </div>
			</div>
			<div class="form-group">
			  <label class="col-sm-2 control-label">Publisher</label>

			  <div class="col-sm-10">
				<input type="text" class="form-control" placeholder=""  required>
				<span id="" class=""></span>
			  </div>
			</div>
			<div class="form-group">
			  <label class="col-sm-2 control-label">Tanggal Submission</label>

			  <div class="col-sm-10">
				<input type="date" class="form-control" name="tanggal_submission" value="" placeholder="" required>
			  </div>
			</div>
			<div class="form-group">
			  <label class="col-sm-2 control-label">Jenis Publikasi</label>

			  <div class="col-sm-10">
				<select name="jenis_publikasi" class="form-control">
					<option value=""></option>
					<?php foreach ($jenis_publikasi as $data) { ?>
						<option value="<?= $data->id?>"><?= $data->nama?></option>
					<?php } ?>
				</select>
			  </div>
			</div>
		  </div>
		  <!-- /.box-body -->
		  <div class="box-footer">
			<button type="submit" class="btn btn-info pull-right">Submit</button>
		  </div>
		  <!-- /.box-footer -->
		</form>
	</div>
			<!-- /.box -->
</section>
<!-- /.content -->

<script>
	function checkPass()
        {
            //Store the password field objects into variables ...
            var pass1 = document.getElementById('password');
            var pass2 = document.getElementById('confirm_password');
            //Store the Confimation Message Object ...
            var message = document.getElementById('confirmMessage');
            //Set the colors we will be using ...
            var goodColor = "#66cc66";
            var badColor = "#ff6666";
            //Compare the values in the password field
            //and the confirmation field
            if (pass1.value == pass2.value) {
                //The passwords match.
                //Set the color to the good color and inform
                //the user that they have entered the correct password
                pass2.style.borderColor = goodColor;
                message.style.color = goodColor;
                message.innerHTML = "<img src='<?php echo base_url() ?>assets/img/check.png'>";
            } else {
                //The passwords do not match.
                //Set the color to the bad color and
                //notify the user.
                pass2.style.borderColor = badColor;
                message.style.color = badColor;
                message.innerHTML = "<img src='<?php echo base_url() ?>assets/img/cross.png'>";
            }
        }
</script>