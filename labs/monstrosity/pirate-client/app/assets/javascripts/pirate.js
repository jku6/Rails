$(function (){
  $('#pirate_button').click(get_all_pirates);
  $('#pirate_create').click(create_pirate);

});

function get_all_pirates()
{
  $.ajax({
    type: "GET",
    url: "http://4eac.localtunnel.com/pirates.json"
    // where the data is located
  }).done(function( msg ) {
    $('#pirates').empty();
    for(var i = 0; i < msg.length; i++)
    {
      $('#pirates').prepend('<h1>'+ msg[i].name + '</h1>');
    }
  }); // this is an embedded/lambda/anoymous function that is run once the data is retrieved
  // msg is the data collected
}

function create_pirate()
{

  var pirate_name = $('#pirate_text').val();

  $.ajax({
    type: "POST",
    url: "http://4eac.localtunnel.com/pirates",
    // if you look at rake routes, pirates#create is at /pirates POST
    data: { name: pirate_name }
    // params[:name]
  }).done(function( msg ) {
    $('#pirates').empty();
    for(var i = 0; i < msg.length; i++)
    {
      $('#pirates').prepend('<h1>'+ msg[i].name + '</h1>');
    }
  });
}

// msg[1] gives the 2nd part of an array