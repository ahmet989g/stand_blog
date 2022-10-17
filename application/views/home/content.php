<?php if (!empty($banners)): ?>
<!-- Banner Starts Here -->
<div class="main-banner header-text">
    <div class="container-fluid">
        <div class="owl-banner owl-carousel">
            <?php foreach ($banners as $banner): ?>
                <div class="item">
                    <img src="<?=base_url('assets/images/'.(!is_null($banner['img_url'])?$banner['img_url']:'default.jpg'))?>" onerror="this.onerror=null; this.src='<?=base_url("assets/images/default.jpg")?>'" alt="<?=$banner['title']?>">
                    <div class="item-content">
                        <div class="main-content">
                            <div class="meta-category">
                            </div>
                            <a href="<?=base_url('blog/'.$banner['url'])?>"><h4><?=$banner['title']?></h4></a>

                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<!-- Banner Ends Here -->
<?php endif; ?>

<?php if(!empty($blogs)): ?>
<section class="blog-posts">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="all-blog-posts">
                    <div class="row">
                        <?php foreach ($blogs as $blog): ?>
                            <div class="col-lg-6">
                                <div class="blog-post">
                                    <div class="blog-thumb">
                                        <img src="<?=base_url('assets/images/'.(!is_null($blog['img_url'])?$blog['img_url']:'default.jpg'))?>" onerror="this.onerror=null; this.src='<?=base_url("assets/images/default.jpg")?>'" alt="<?=$blog['title']?>">
                                    </div>
                                    <div class="down-content">
                                        <a href="<?=base_url('blog/'.$blog['url'])?>"><h4><?=$blog['title']?></h4></a>
                                        <p><span><?=shorter_text($blog['description'], 350)?></span></p>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>