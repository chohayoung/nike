//bx-slider
$(function(){
    $('.slider1').bxSlider({
            slideWidth: 250,
            minSlides: 4,
            maxSlides: 4,
            slideMargin: 10,
            auto: true,
            speed:500,
            moveSlides:4,
            pagerCustom :'#bx-pager'
             });
    $( '#mi-slider' ).catslider();
});

//[nav]
$(function(){
 $(".all").hover(function(){
    $("#nav").stop().slideDown();
 },function(){
    $("#nav").stop().slideUp();
 });
    $("#nav").hover(function(){
     $("#nav").stop().slideDown();   
 },function(){
    $("#nav").stop().slideUp();

 });
 
}); 


