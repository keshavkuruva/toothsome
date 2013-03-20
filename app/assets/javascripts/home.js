//= require jquery
//= require jquery_ujs
$(function() {
  $('#product_search').typeahead({
    source: function (query, process) {
              return $.ajax({
                url: $('#product_search').data('link'),
                     type: 'post',
                     data: { query: query },
                     dataType: 'json',
                     success: function (result) {
                       var resultList = result.map(function (item) {
                         var aItem = {name: item.name };
                         return JSON.stringify(aItem);
                       });

                       return process(resultList);

                     }
              });
            },

  matcher: function (obj) {
             var item = JSON.parse(obj);
             return ~item.name.toLowerCase().indexOf(this.query.toLowerCase())
           },

  sorter: function (items) {          
            var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
            while (aItem = items.shift()) {
              var item = JSON.parse(aItem);
              if (!item.name.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
              else if (~item.name.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
              else caseInsensitive.push(JSON.stringify(item));
            }

            return beginswith.concat(caseSensitive, caseInsensitive)

          },


  highlighter: function (obj) {
                 var item = JSON.parse(obj);
                 var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
                   return item.name.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
                     return '<strong>' + match + '</strong>'
                   })
               },

  updater: function (obj) {
             var item = JSON.parse(obj);
             $('#IdControl').attr('value', item.id);
             return item.name;
           }
  });

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
                  url: 'home/product_search',
                  type: 'post',
                  dataType: "html",
                  data: 'type=by_price;price_from=' + ui.value + ';price_to=' + $('.max').text(),
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
                },
                function () {
                  var rating_arr = ["Average" , "Better" , "Best" , "Most wanted" , "Awesome" ];
                  $('.prod_star').raty({ starOff : '/assets/star-off.png',
                                    starHalf : '/assets/star-half.png',
                                    starOn : '/assets/star-on.png',
                                    hints : ["Average" , "Better" , "Best" , "Most wanted" , "Awesome" ],
                                    click: function (score,evt) {
                                      $.ajax({
                                        type:'post',
                                        url:"/products/" + $(this).attr('data-product') + "/rating",
                                        data:"rating=" + rating_arr[score-1],
                                        success:function(data,res) {},
                                        error:function(obj) { if(obj.status == 401 ) { window.location = '/users/sign_in'} }
                                      });
                                    }
                                 });
                });
       return false;
     });
     $('#product_search').keypress(function(e) {
       if( e.keyCode == 13 ) {
         $.ajax({
           url:'/home/product_search',
           type:'post',
           data:'type=by_name;query=' + $('#product_search').val(),
           success: function ( resp ) {
             $('#search_results').html(resp);
           }
         });
       }
     });
     

     $("span#current_week_day").html(["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"][(new Date()).getDay()] + "'s deals")
});
