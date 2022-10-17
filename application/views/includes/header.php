<!-- Header -->
<header class="">
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="<?=base_url()?>"><h2>Stand Blog<em>.</em></h2></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <?php $navigations = get_navigation(); ?>
                    <?php if (!is_null($navigations)): ?>
                        <?php foreach ($navigations as $nav): ?>
                            <li class="nav-item <?=$nav['url']==$this->uri->segment(2)?'active':''?>">
                                <a class="nav-link" href="<?=!is_null($nav['url'])?$nav['url']:'javascript:;'?>"><?=$nav['title']?>
                                    <?=$nav['url']==$this->uri->segment(2)?'<span class="sr-only">(current)</span>':''?>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>
</header>