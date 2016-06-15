$(document).ready(function(){

  var calendar = $('#calendar').fullCalendar({
    events: events,
  });

  $('#new_event').on('ajax:success', function(e, data, status, xhr){
    calendar.fullCalendar( 'removeEvents' );
    calendar.fullCalendar( 'addEventSource', data );
  }).on('ajax:error',function(e, xhr, status, error){

  });

});