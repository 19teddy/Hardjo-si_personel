<div class="content-header">
	<h1>
		<small><i class="fa fa-user"></i></small>
		<?= $is_edit ? 'Edit' : 'Tambah' ?>
		<?= $form_title ?>
	</h1>
</div>


<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-12">

			<?php echo $this->renderer->render_alert(); ?>

			<div class="nav-tabs-custom">
				<ul class="nav nav-tabs" style="font-size: 12px;">
					<?php $i=0; foreach($contents as $key => $value): ?>
						<li <?= $key == $sub_content ? ' class="active"' : '' ?>>
							<?php $url = $is_edit ?  (site_url()."personil/edit/".str_replace('_', '-', $key).'/'.$id_pegawai) :'javascript:;' ?>
							<a href="<?= $url; ?>">
								<?= $value ?>
							</a>
						</li>
					<?php $i++; endforeach; ?>
				</ul>
				<div class="tab-content">
					<?php $view_file = 'contents/form-personil/'.str_replace('_', '-', $sub_content).'.php'; ?>
					<?php if(file_exists(VIEWPATH.$view_file)): ?>
						<?php $this->load->view($view_file); ?>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
</section>

<script type="text/javascript">
function initDatepicker() {
	$(".datepicker").datepicker({
		format: "dd M yyyy",
		clearBtn: true,
		orientation: "bottom auto"
	});
	$(".datepicker").removeClass('datepicker');
}
initDatepicker();
</script>
