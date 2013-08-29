# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $('.dialog').css("margin-top", ($(window).height() - $('.dialog').height())/2)
  # $('.dialog_footer').height($('.dialog_footer_button').height()+10)
  footerButton = $('.dialog_footer_button')
  width = $('.dialog').width() / 2 - (parseInt(footerButton.css('margin'))*2) - parseInt($('.dialog_title').css('padding'))
  $('.dialog_footer_button').width(width)
  $(window).resize(->
    $('.dialog').css("margin-top", ($(window).height() - $('.dialog').height())/2)
    )
  $('#dialog_cancel.dialog_footer_button').click(->
    dialog = $('.dialog_translucent_background')
    dialog.hide()
    )