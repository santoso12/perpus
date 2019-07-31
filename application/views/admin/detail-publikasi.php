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
			<table class="table">
				<tr><td>Id User</td><td><?php echo $id_user; ?></td></tr>
				<tr><td>Userid</td><td><?php echo $userid; ?></td></tr>
				<tr><td>Id Jenis Publikasi</td><td><?php echo $id_jenis_publikasi; ?></td></tr>
				<tr><td>Id Kategori Publikasi</td><td><?php echo $id_kategori_publikasi; ?></td></tr>
				<tr><td>Judul</td><td><?php echo $judul; ?></td></tr>
				<tr><td>Publisher</td><td><?php echo $publisher; ?></td></tr>
				<tr><td>Tanggal Submission</td><td><?php echo $tanggal_submission; ?></td></tr>
				<tr><td>Status Draft Artikel</td><td><?php echo $status_draft_artikel; ?></td></tr>
				<tr><td>Status Verifikasi</td><td><?php echo $status_verifikasi; ?></td></tr>
				<tr><td>Is Approved</td><td><?php echo $is_approved; ?></td></tr>
				<tr><td>Approved Date</td><td><?php echo $approved_date; ?></td></tr>
				<tr><td>Approved By</td><td><?php echo $approved_by; ?></td></tr>
				<tr><td>Create Date</td><td><?php echo $create_date; ?></td></tr>
				<tr><td>Create By</td><td><?php echo $create_by; ?></td></tr>
				<tr><td>Create Ip</td><td><?php echo $create_ip; ?></td></tr>
				<tr><td>Update Date</td><td><?php echo $update_date; ?></td></tr>
				<tr><td>Update By</td><td><?php echo $update_by; ?></td></tr>
				<tr><td>Update Ip</td><td><?php echo $update_ip; ?></td></tr>
				<tr><td>File Name</td><td><?php echo $file_name; ?></td></tr>
				<tr><td>File Path</td><td><?php echo $file_path; ?></td></tr>
				<tr><td>File Url</td><td><?php echo $file_url; ?></td></tr>
				<tr><td>File Size</td><td><?php echo $file_size; ?></td></tr>
				<tr><td>File Type</td><td><?php echo $file_type; ?></td></tr>
				<tr><td>Url Jurnal Seminar</td><td><?php echo $url_jurnal_seminar; ?></td></tr>
				<tr><td></td><td><a href="<?php echo site_url('publikasi_admin') ?>" class="btn btn-default">Cancel</a></td></tr>
			</table>
		 </div>
    </div>
	<!-- /.row -->
</section>
<!-- /.content -->