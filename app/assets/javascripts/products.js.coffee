# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("div.product_days").hide() if !$("input#product_deal_type").is(":checked")
  $("#product_deal_type").click ->
    if $(this).is(":checked")
      $("div.product_days").show().find("select").attr("required", "required")
    else
      $("div.product_days").hide().find("select").removeAttr("required")

  if $("#date_from_field").length > 0
    new JsDatePick({useMode:2, target:"date_from_field", dateFormat:"%Y-%m-%d"});
    new JsDatePick({useMode:2, target:"date_to_field", dateFormat:"%Y-%m-%d"});

  $("li[data-product-admin]").on "mouseover", ->
    $(this).find(".close-btn").show()

  $("li[data-product-admin]").on "mouseout", ->
    $(this).find(".close-btn").hide()

  $("li[data-product-admin] .close-btn").on "click", ->
    url = $(this).attr "data-url"
    current_element = $ this
    $.ajax
      type: 'delete'
      url: url
      success: (res) ->
        current_element.parents().eq(1).fadeOut
          duration: 300
          complete: ->
            current_element.parents().eq(2).append $("ul.thumbnails:last li:first") if $("ul.thumbnails").length > 1
            current_element.parents().eq(1).remove()
            $("ul.thumbnails:last").parent().remove() if $("ul.thumbnails:last li").length == 0
      error: ->
        alert "Something has gone wrong. Please try latter."