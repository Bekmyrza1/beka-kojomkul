			<div class="pictureundermenu">
				<div class="container">
					<div class="themescriptonpicture">
						ЖАҢЫЛЫКТАР
					</div>
				</div>
			</div>
			<div class="container">
		<?php foreach ($md_news as $news): ?>
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