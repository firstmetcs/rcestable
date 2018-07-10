// document.getElementById("login").style.display="none";
// document.getElementById("register").style.display="none";
layui.use('element', function(){
	var element = layui.element;
});
function getNavRec(i) {
  $(".logo-nav-recommend").css('display','inline-block');
}
function removeNavRec(i) {
  $(".logo-nav-recommend").css('display','none');
}