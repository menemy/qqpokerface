jQuery(function($){
  $(".list-item").hover(function(){
    $(this).addClass("hover")
  }, function(){
    $(this).removeClass("hover")
  });
});