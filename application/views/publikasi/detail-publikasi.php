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
				<tr>
					<td>User</td>
					<td>
						<?php
							$user = $this->db->get_where('user_publikasi', array('id' => $id_user))->row();
							echo $user->nama;
						?>
					</td>
				</tr>
				<tr>
					<td>Jenis Publikasi</td>
					<td>
						<?php
						$user = $this->db->get_where('ref_jenis_publikasi', array('id' => $id_jenis_publikasi))->row();
						echo $user->nama;
						?>
					</td>
				</tr>
				<tr><td>Judul</td><td><?php echo $judul; ?></td></tr>
				<tr><td>Publisher</td><td><?php echo $publisher; ?></td></tr>
				<tr><td>Tanggal Submission</td><td><?php echo $tanggal_submission; ?></td></tr>
				<tr>
					<td>Status Draft Artikel</td>
					<td>
						<?php if($status_draft_artikel==1){ 
							echo "Submited";
						} else if($status_draft_artikel==2) {
							echo "Accepted"; 
						}?>
					</td>
				</tr>
				<tr><td>Status Verifikasi</td><td><?php echo $status_verifikasi; ?></td></tr>
				<tr>
					<td>Status Approve</td>
					<td>
						<?php if($is_approved==1){ 
							echo "Approved";
						} else if($is_approved==2) {
							echo "Ditolak"; 
						}?>
					</td>
				</tr>
				<tr><td>Approved Date</td><td><?php echo $approved_date; ?></td></tr>
				<tr><td>Create Date</td><td><?php echo $create_date; ?></td></tr>
				<tr>
					<td>Url Jurnal Seminar</td>
					<td>
						<a href="<?php echo $url_jurnal_seminar; ?>" target="_blank"><?php echo $url_jurnal_seminar; ?></a>
					</td>
				</tr>
				<tr>
					<td>File Submission</td>
					<td><a href="<?php echo base_url() .'upload/submission/'.$file_submission;?>" target="_blank">Lihat</a></td>
				</tr>
				<tr>
					<td>File Publikasi</td>
					<td><a href="<?php echo base_url() .'upload/publikasi/'.$file_publikasi;?>" target="_blank">Lihat</a></td>
				</tr>
				<tr><td></td>
					<td>
						<a href="<?php echo site_url('publikasi') ?>" class="btn btn-default">Kembali</a>
					</td>
				</tr>
			</table>
		 </div>
    </div>
	<!-- /.row -->
</section>
<!-- /.content -->