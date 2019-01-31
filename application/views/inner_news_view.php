		<?php foreach ($md_news as $news): ?>
			<div class="pictureundermenu">
				<div class="container">
					<div class="themescriptonpicture">
						ЖАҢЫЛЫКТАР
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="row">
						<div class="borderblog">
				<h1><?php echo $news['tema_kg'] ?></h1>

				<div class="row">
					<div class="slider-for">
						<div class="img" style="background-image: url(<?php echo base_url().$news['foto'];?>);"></div>
					</div>
					<div class="slider-nav">
						<div class="img2" style="background-image: url(<?php echo base_url().$news['foto'];?>);"></div>
					</div>
				</div>
				<p><?php echo $news['page_text_kg']; ?></p>
				<div class="time">
					<i class="fa fa-clock-o" aria-hidden="true"></i><?php echo $news['vrem']; ?>
					<i class="fa fa-eye" aria-hidden="true"></i><?php echo $news['stat']; ?>
				</div>
			</div>
				</div>
		
			<?php endforeach ?>
		</div>