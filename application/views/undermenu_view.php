<div class="underslider">
	<div class="container">
	<?php 
		foreach ($under_menu  as $item) {
	?>
		<a class="underslider_a" href="<?php echo $item['url'];?>">
			<span>
				<img src="<?php echo base_url('assets/images/flaticonsvg/'.$item['id'].'.svg');?>">
			</span><br><?php echo $item['name_kg'];?></a>
	<?php } ?>
	</div>

</div>
