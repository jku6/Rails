$(function(){

  $('input[type=submit]').click(send_message);

});

function send_message()
{
  var msgtype = $('input[type=radio]:checked').val();
  var address = $('input[name=address]').val();
  var message = $('textarea').val();

  $.ajax({
    type: "POST",
    url: "http://4zdr.localtunnel.com/message",
    data: { msgtype: msgtype, address: address, message: message }
  }).done(function( msg ) {
    console.log( "Data Saved: " + msg );
  });
}
