<footer>
    <div class="container">
        <div class="row">
            <?php $social_medias = get_social_media(); ?>
            <?php if (!empty($social_medias)): ?>
                <div class="col-lg-12">
                    <ul class="social-icons">
                        <?php foreach ($social_medias as $sm): ?>
                            <li><a href="<?=!is_null($sm['url'])?$sm['url']:'javascript:;'?>" <?=!is_null($sm['url'])?'target="_blank"':''?>><?=$sm['title']?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            <?php endif; ?>
            <div class="col-lg-12">
                <div class="copyright-text">
                    <p>Copyright <?=date('Y')?> Stand Blog Co.

                        | Design: <a rel="nofollow" href="https://templatemo.com" target="_parent">TemplateMo</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<?php $this->load->view("includes/include_script"); ?>