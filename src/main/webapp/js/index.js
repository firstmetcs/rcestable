
layui.use(['element','carousel', 'form'], function(){
  var element = layui.element;
  var carousel = layui.carousel
  ,form = layui.form;
  
  //常规轮播
  carousel.render({
    elem: '#carousel'
    ,arrow: 'always'
    ,interval: 2000
    ,anim: 'fade'
    ,height: '400px'
    ,width: '100%'
  });
})
function getComment(i) {
  $("#pc-price-"+i).hide();
  $("#pc-comment-"+i).show();
}
function getPrice(i) {
  $("#pc-comment-"+i).hide();
   $("#pc-price-"+i).show();
}
function setShadow(goods,num) {
  $("#"+goods+"-recommend-"+num).css('box-shadow','2px 2px 2px #888888');
}
function removeShadow(goods,num) {
  $("#"+goods+"-recommend-"+num).css('box-shadow','');

}
function changeBanner(i) {
  $(".banner-nav-"+i).css('background-color','#008b8b');
  $("#carousel").css('display','none');
  $(".banner-recommend").css('display','inline-block');
}
function resetBanner(i) {
  $(".banner-nav-"+i).css('background-color','');
  $(".banner-recommend").css('display','none');
    $("#carousel").css('display','inline-block');
}