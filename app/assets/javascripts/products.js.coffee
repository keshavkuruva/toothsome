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