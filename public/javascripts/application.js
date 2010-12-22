// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function(){
  $('#title').keyup(function(){
    $('#content').val($(this).val())
  })
  
  $('.show-phone').click(function(){
    id = $(this).parents('tr:first').attr('data-id')
    window.history.pushState({},"", '/cell_phones/' + id)
    $('#frame').load('/cell_phones/' + id)
    return false
  })
})
