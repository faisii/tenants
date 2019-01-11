# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

 
$ ->
  $('#landlords-datatable').dataTable
    processing: true
    serverSide: true
    ajax: $('#landlords-datatable').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'id'}
      {data: 'fname'}
      {data: 'oname'}
      {data: 'email'}
      {data: 'status'}
      
      
    ]
      