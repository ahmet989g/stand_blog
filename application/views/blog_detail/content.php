<?php if (!$blog): ?>
    <div class="heading-page header-text">
        <section class="page-heading">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-content">
                            <h2>İÇERİK BULUNAMADI</h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <br/><br/><br/><br/>
<?php else: ?>
    <div class="heading-page header-text">
        <section class="page-heading">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-content">
                            <h4>Post Details</h4>
                            <h2><?=$blog->title?></h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <section class="blog-posts grid-system">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="all-blog-posts">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="blog-post">
                                    <div class="blog-thumb">
                                        <img src="<?=base_url('assets/images/'.(!is_null($blog->img_url)?$blog->img_url:'default.jpg'))?>" alt="<?=$blog->title?>">
                                    </div>
                                    <div class="down-content">
                                        <a href="#"><h4><?=$blog->title?></h4></a>
                                        <?=$blog->description?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php endif; ?>
