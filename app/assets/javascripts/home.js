jQuery(function($){
  $("#tweet-block").tweet({
    username: "seaofclouds",
    page: 1,
    avatar_size: 32,
    count: 20,
    loading_text: "loading ..."
  }).bind("loaded", function() {
    var ul = $(this).find(".tweet_list");
    var ticker = function() {
      setTimeout(function() {
        ul.find('li:first').animate( {marginTop: '-4em'}, 500, function() {
          $(this).detach().appendTo(ul).removeAttr('style');
        });
        ticker();
      }, 5000);
    };
    ticker();
  });
});