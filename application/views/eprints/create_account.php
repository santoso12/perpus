<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Eprints
	</h1>
	<ol class="breadcrumb">
		<li><a href="<?php echo site_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Create Eprints Account</li>
	</ol>
</section>
<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-info">
				<div class="box-header with-border">
				  <h3 class="box-title">Create Account</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form class="form-horizontal" action="<?php echo site_url('eprints/create_account') ?>" method="post">
				  <div class="box-body">
					<div class="form-group">
					  <label class="col-sm-2 control-label">Username</label>

					  <div class="col-sm-10">
						<input type="hidden" class="form-control" name="username" value="<?php echo $username; ?>">
						<input type="text" class="form-control" value="<?php echo $username; ?>" placeholder="Username" disabled>
					  </div>
					</div>
					<div class="form-group">
					  <label class="col-sm-2 control-label">Password</label>

					  <div class="col-sm-10">
						<input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
					  </div>
					</div>
					<div class="form-group">
					  <label class="col-sm-2 control-label">Confirm Password</label>

					  <div class="col-sm-10">
						<input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="Confirm Password" onkeyup="checkPass(); return false;" style="width: 90%; float: left; margin-right: 10px;" required>
						<span id="confirmMessage" class="confirmMessage"></span>
					  </div>
					</div>
					<hr>
					<div class="form-group">
					  <label class="col-sm-2 control-label">Nama</label>

					  <div class="col-sm-10">
						<input type="text" class="form-control" name="nama" value="<?php echo $this->session->userdata('nama'); ?>" placeholder="Nama" required>
					  </div>
					</div>
					<div class="form-group">
					  <label class="col-sm-2 control-label">Email</label>

					  <div class="col-sm-10">
						<input type="email" class="form-control" name="email" value="<?php echo $this->session->userdata('email'); ?>" placeholder="Email" required>
					  </div>
					</div>
					<div class="form-group">
					  <label class="col-sm-2 control-label">Alamat</label>

					  <div class="col-sm-10">
						<textarea class="form-control" name="address" required></textarea>
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
		</div>
	</div>
	<!-- /.row -->
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