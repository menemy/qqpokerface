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

  $.getJSON({
    url: '/dates.json',
    dataType: 'json',
    success: function(events){


      
    }
  })

$('.events-calendar').datepicker({
          dateFormat: 'yy-mm-dd',
          beforeShowDay: function(date) {
            var dateAsString = date.getFullYear().toString() + "-" + (date.getMonth()+1).toString() + "-" + date.getDate();
         /*   
            for (i = 0; i < events.length; i++){
              console.log(events[i].date)
              if (dateAsString == events[i].date) {
                  return [true, 'specialDay']
              } else {
                return true
              }
            }
            */
            return [true, '']
          },
          onSelect: function(dateText, inst) {
            console.log(dateText)

            $.ajax({
              url: '/dates/' + dateText,
              success: function(response){
                console.log(response)

                $(".events-list").html(response)
              }
            })
          }
        })


  
});