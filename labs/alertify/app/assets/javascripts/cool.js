$(function(){
    $('#b1').click(b1);
    $('#b2').click(b2);
    $('#b3').click(b3);
    $('#b4').click(b4);
});

function b1()
{
    alertify.alert( "this is the message yo", function () {
        $('h1').text('we rule and you suck!');
    });
}

function b2()
{
    alertify.log( "hey", "type" );
}

function b3()
{
    alertify.success( "correct" );
}

function b4()
{
    alertify.error( "wrong" );
}