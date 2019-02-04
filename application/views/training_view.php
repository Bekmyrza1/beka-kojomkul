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
<<<<<<< HEAD
					<p><?php echo $item['name_kg'];?></p>
=======
					<p>Спорт жарыялары маданият</p>
					</div>
				</a>
				</div>
					<div class="col-xs-12 col-sm-4 trainingmaindiv">
				<a href="#" class="training1">
					<div class="trainingcurtain">
					<img src="<?php echo base_url('assets/images/video-camera.svg');?>">
					<!-- <div class="trainingcurtain1"></div> -->
				</div>
					<div class="trainingtheme">
					<p>Видеогалерея</p>
					</div>
				</a>
				</div>
					<div class="col-xs-12 col-sm-4 trainingmaindiv">
				<a href="#" class="training1">
					<div class="trainingcurtain">
					<img src="<?php echo base_url('assets/images/gallery.svg');?>">
					<!-- <div class="trainingcurtain1"></div> -->
				</div>
					<div class="trainingtheme">
					<p>Фотогалерея</p>
>>>>>>> 8121252fa9958ba902863052dc9659ff554d07c3
					</div>
				</a>
				</div>
			<?php
				}
			?>	
		
		</div>
	
		</div>
</div>