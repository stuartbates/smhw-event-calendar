$(document).ready(function(){

  var calendar = $('#calendar').fullCalendar({
    events: events,
  });

  $('#new_event').validate();

  $('#new_event').on('ajax:success', function(e, data, status, xhr){
    calendar.fullCalendar( 'removeEvents' );
    calendar.fullCalendar( 'addEventSource', data );
    reset_event_form();
  }).on('ajax:error',function(e, xhr, status, error){

  });

  $('.datepicker').datepicker( { dateFormat: 'yy-mm-dd' } );

  reset_event_form();

});

function reset_event_form(){
  $('#new_event').find(':text, textarea').each(function(){
    $(this).val('');
  });
  $('#new_event').find(':text:first').focus();
}