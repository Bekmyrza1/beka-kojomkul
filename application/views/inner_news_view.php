<<<<<<< HEAD

=======
>>>>>>> 55235dac6bab3839a1b44ebfe439bdafd864026d
			<div class="pictureundermenu">
				<div class="container">
					<div class="themescriptonpicture">
						ЖАҢЫЛЫКТАР
					</div>
				</div>
			</div>
<<<<<<< HEAD
<<<<<<< HEAD
			
<div class="container">
=======
>>>>>>> 55235dac6bab3839a1b44ebfe439bdafd864026d
		<?php foreach ($md_news as $news): ?>
			<div class="col-md-8">
				<div class="row">
						<div class="borderblog">
				<h1 id="tema"><?php echo $news['tema_kg'] ?></h1>
<<<<<<< HEAD
=======

>>>>>>> 55235dac6bab3839a1b44ebfe439bdafd864026d
				<div class="row">
					<div class="slider-for" id="slider-for">
						<?php 
			$img_name=$news['gallery'];
			$arr_js="var fruits ='".$img_name."';";
			// echo '<div id="img" class="img" style="background-image: url('.base_url()..');"></div>';
			 ?>
					</div>
<<<<<<< HEAD
					<div class="slider-nav">
						<div class="img2" style="background-image: url('<?php echo base_url().$news['foto'];?>');"></div>
					</div>
					</div>
=======

					<div class="slider-nav">
						<div class="img2" style="background-image: url();"></div>
					</div>
				</div>
>>>>>>> 55235dac6bab3839a1b44ebfe439bdafd864026d
				<p><?php echo $news['page_text_kg']; ?></p>
				<div class="time">
					<i class="fa fa-clock-o" aria-hidden="true"></i><?php echo $news['vrem']; ?>
					<i class="fa fa-eye" aria-hidden="true"></i><?php echo $news['stat']; ?>
				</div>
			</div>
				</div>
		
					<script type="text/javascript">
<?php echo $arr_js;?>
var ggg = 456;
console.log('asdasdasdasd');
var arr = fruits.split(',');
for (var i = 0; i < arr.length; i++) {
var block = document.getElementById('slider-for');
	block.innerHTML='<div class="img11" style="background-image: url('<?php echo base_url();?>+arr[i]');"></div>';
}
		</script>
			<?php endforeach ?>
<<<<<<< HEAD
		</div>
</div>
=======
		</div>
>>>>>>> 55235dac6bab3839a1b44ebfe439bdafd864026d
=======
			<div class="container">
		<?php foreach ($md_in_news as $news): ?>
				<div class="col-md-8">
		<div class="borderblog">
		<h1><?php echo $news['tema_kg'] ?></h1>

		<div class="row">
		<div class="slider-for">
						<?php 
			$text = $news['gallery'];
			$arr = explode(",", $text);
			foreach ($arr as $img_name) { ?>
							<div class="img" style="background-image: url('<?php echo base_url('assets/images/photos/').$img_name?>');"></div> <?php } ?>
		</div>
		<div class="slider-nav">
			<?php
			$text = $news['gallery'];
			$arr = explode(",", $text);
			 foreach ($arr as $img_name) { ?>
							<div class="img2" style="background-image: url('<?php echo base_url('assets/images/photos/thumb/').$img_name?>');"></div> <?php } ?>
      	</div>
     </div>
     <p><?php echo $news['page_text_kg'] ?></p>
     <div class="time">
				<i class="fa fa-clock-o" aria-hidden="true"></i>
				<a>12 Дек 2018</a>
				<i class="fa fa-comments-o" aria-hidden="true"></i>	
				<a>0 комментариев</a>
				</div>

	</div>
	</div>
			<?php endforeach ?>
>>>>>>> 8121252fa9958ba902863052dc9659ff554d07c3
