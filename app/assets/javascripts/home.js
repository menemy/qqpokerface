jQuery(function($){
  $(".tweet-block").tweet({
    username: "seaofclouds",
    page: 1,
    count: 20,
    loading_text: ""
  }).bind("loaded", function() {
    var ul = $(this).find(".tweet_list");
    var ticker = function() {
      setTimeout(function() {
        ul.find('li:first').animate( {marginTop: '-4em'}, 800, function() {
          $(this).detach().appendTo(ul).removeAttr('style');
        });
        ticker();
      }, 5000);
    };
    ticker();
  });
});