var counter = 0;
var timer;
var water_timer;


function make_food() {
    timer = setInterval(add_pellet, 1);
    function add_pellet() {
        var pellet = $('<div>');
        pellet.addClass('pellet');
        pellet.css('background-color', food_color());
        $('#food-maker').append(pellet);
        var current_pellets = $('#food-maker').children();
        if (current_pellets.length > 960) {
            clearInterval(timer);
            food_ready();
        }
    }
}

function make_water() {
    water_timer = setInterval(add_water, 1);
    function add_water() {
        console.log('making water');
        var water = $('<div>');
        water.addClass('water');
        water.css('background-color', water_color());
        $('#water-maker').append(water);
        var current_water = $('#water-maker').children();
        if (current_water.length > 960) {
            clearInterval(water_timer);
            water_ready();
        }
    }
}

function water_ready(){
    console.log('food ready!');
    $('#water-maker').draggable({revert: true});
}

function food_ready(){
    console.log('food ready!');
    $('#food-maker').draggable({revert: true});
}

function food_color() {
    var color = "rgb(" + _.random(0, 255) + "," + _.random(0, 255) + "," + _.random(0, 255) + ")";
    return color;
}

function water_color(){
var color = "rgb(" + _.random(0, 70) + "," + _.random(0, 255) + ","+ _.random(180, 255)+")";
return color;
}

$('.droppable').droppable({
    drop: function(event, ui) {
        console.log('Food Dropped');
        console.log(event);
        console.log(ui);
        console.log(event.target);
    }
});



$(function() {
    $("#species-supply").on('click', "#food-maker", make_food);
    $("#aquaria-supply").on('click', "#water-maker", make_water);
});