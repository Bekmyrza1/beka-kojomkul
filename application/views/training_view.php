<div class="training">
	<div class="container">
		
			<div class="row">
		<?php 
			foreach ($train_menu  as $item) {
		?>
			<div class="col-xs-12 col-sm-4 trainingmaindiv">
				<a href="#" class="training1">
					<div class="trainingcurtain">
					<img src="<?php echo base_url('assets/images/'.$item['id'].'.svg');?>">
				<!-- 	<div class="trainingcurtain1"></div> -->
				</div>
					<div class="trainingtheme">
					<p><?php echo $item['name_kg'];?></p>
					</div>
				</a>
			</div>
					
		<?php } ?>
		</div>
	
		</div>
</div>