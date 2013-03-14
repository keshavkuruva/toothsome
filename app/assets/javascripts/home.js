//= require jquery
//= require jquery_ujs
$(function() {
     $( "#slider" ).slider({
       range:"max",
       min:10,
       max:199,
       slide:function(event,ui) {
         $('.min').text(ui.value);
       },
       change:function(event,ui) {
         $('.min').text(ui.value);
                $.ajax({
                  url: 'home/search_by_price',
                  type: 'post',
                  dataType: "html",
                  data: 'price_from=' + ui.value + ';price_to=' + $('.max').text(),
                  beforeSend: function(xhr, settings) {
                    $('#search_results').hide();
                  },
                  success: function (response) {
                    $('#search_results').html(response);
                    return;
                  },
                  complete: function(xhr, textStatus) {
                    $('#search_results').show();
                  }
                });
       }
     });

     $(document).on('click','.button',function (event) {
       event.preventDefault();
       $('#element_to_pop_up').bPopup({
                content:'ajax',
                loadUrl:$(this).attr('href'),
                speed: 450,
                position:["50px","50px"],
                transition: 'slideIn',
                 });
       return false;
     });
});
