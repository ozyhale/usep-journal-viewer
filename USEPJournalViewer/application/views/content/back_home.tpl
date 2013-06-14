<style>
    #myCarousel{
        margin: -9px;
    }
    #gradient1, #gradient2, #gradient3, .carousel-inner{
        border-radius: 15px;
    }
</style>

<div id="myCarousel" class="carousel slide">

    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Carousel items -->
    <div class="carousel-inner">
        <div id="gradient1" class="active item"><img src="{$base_url}application/views/img/journal1.png"></div>
        <div id="gradient2" class="item"><img src="{$base_url}application/views/img/journal2.png"></div>
        <div id="gradient3" class="item"><img src="{$base_url}application/views/img/journal3.png"></div>
    </div>

</div>