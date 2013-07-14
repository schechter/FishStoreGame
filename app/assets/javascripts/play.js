var counter = 0;
var timer;
var water_timer;
var aquarium_timer1;
var aquarium_timer2;
var aquarium_timer3;
var aquarium_timer4;
var aquarium_timer5;
var aquarium_timer6;

var hunger_timer1;
var hunger_timer2;
var hunger_timer3;
var hunger_timer4;
var hunger_timer5;
var hunger_timer6;

function tanks_need_food_timer() {
    hunger_timer1 = setInterval(tank1_needs_food, parseInt($($('.users-aquarium')[0]).find('h2').text() * 18, 10) * 5);
    hunger_timer2 = setInterval(tank2_needs_food, parseInt($($('.users-aquarium')[1]).find('h2').text() * 18, 10) * 5);
    hunger_timer3 = setInterval(tank3_needs_food, parseInt($($('.users-aquarium')[2]).find('h2').text() * 18, 10) * 5);
    hunger_timer4 = setInterval(tank4_needs_food, parseInt($($('.users-aquarium')[3]).find('h2').text() * 18, 10) * 5);
    hunger_timer5 = setInterval(tank5_needs_food, parseInt($($('.users-aquarium')[4]).find('h2').text() * 18, 10) * 5);
    hunger_timer6 = setInterval(tank6_needs_food, parseInt($($('.users-aquarium')[5]).find('h2').text() * 18, 10) * 5);
}

function tanks_get_dirty_timer() {
    aquarium_timer1 = setInterval(dirty_tanks1, parseInt($($('.users-aquarium')[0]).find('h1').text() * 18, 10) * 5);
    aquarium_timer2 = setInterval(dirty_tanks2, parseInt($($('.users-aquarium')[1]).find('h1').text() * 18, 10) * 5);
    aquarium_timer3 = setInterval(dirty_tanks3, parseInt($($('.users-aquarium')[2]).find('h1').text() * 18, 10) * 5);
    aquarium_timer4 = setInterval(dirty_tanks4, parseInt($($('.users-aquarium')[3]).find('h1').text() * 18, 10) * 5);
    aquarium_timer5 = setInterval(dirty_tanks5, parseInt($($('.users-aquarium')[4]).find('h1').text() * 18, 10) * 5);
    aquarium_timer6 = setInterval(dirty_tanks6, parseInt($($('.users-aquarium')[5]).find('h1').text() * 18, 10) * 5);
}

function tank1_needs_food() {
    feed_tank1($('.users-aquarium')[0]);
}

function tank2_needs_food() {
    feed_tank2($('.users-aquarium')[1]);
}
function tank3_needs_food() {
    feed_tank3($('.users-aquarium')[2]);
}
function tank4_needs_food() {
    feed_tank4($('.users-aquarium')[3]);
}
function tank5_needs_food() {
    feed_tank5($('.users-aquarium')[4]);
}
function tank6_needs_food() {
    feed_tank6($('.users-aquarium')[5]);
}

function feed_tank1(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    }
}

function feed_tank2(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    }
}

function feed_tank3(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    }
}

function feed_tank4(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    }
}

function feed_tank5(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    }
}

function feed_tank6(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    }
}

function dirty_tanks1() {
    dirty_tank1($('.users-aquarium')[0]);
}

function dirty_tanks2() {
    dirty_tank2($('.users-aquarium')[1]);
}

function dirty_tanks3() {
    dirty_tank3($('.users-aquarium')[2]);
}

function dirty_tanks4() {
    dirty_tank4($('.users-aquarium')[3]);
}

function dirty_tanks5() {
    dirty_tank5($('.users-aquarium')[4]);
}

function dirty_tanks6() {
    dirty_tank6($('.users-aquarium')[5]);
}

function dirty_tank1(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    }
}

function dirty_tank2(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    }
}

function dirty_tank3(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    }
}

function dirty_tank4(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    }
}

function dirty_tank5(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    }
}

function dirty_tank6(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    }
}

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

function food_ready() {
    $('#food-maker').draggable({
        revert: true
    });
}

function make_water() {
    water_timer = setInterval(add_water, 1);

    function add_water() {
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

function water_ready() {
    $('#water-maker').draggable({
        revert: true
    });
}

function dirt_color() {
    var color = "rgb(" + _.random(175, 255) + "," + _.random(0, 80) + "," + _.random(0, 80) + ")";
    return color;
}

function food_color() {
    var color = "rgb(" + _.random(0, 255) + "," + _.random(0, 255) + "," + _.random(0, 255) + ")";
    return color;
}

function water_color() {
    var color = "rgb(" + _.random(0, 70) + "," + _.random(0, 255) + "," + _.random(180, 255) + ")";
    return color;
}

function species_draggable() {
    $('.fish-div').draggable({
        revert: true
    });
}

function fish_draggable() {
    $('.fish-in-aquarium').draggable({
        revert: true
    });
}

$('.droppable').droppable({
    drop: function(event, ui) {
        var text = (ui.draggable.context.outerText);
        var aquarium = $(event.target).find('p').text();
        console.log(ui);
        this_guy = $(this);
        if (text == 'water') {
            clean_aquarium_water(this_guy);
        } else if (text == 'food') {
            feed_aquarium();
        } else if (text == 'fish') {
            console.log('nothing');
        } else {
            add_fish_to_aquarium(aquarium, text);
        }
    }
});

function add_fish_to_aquarium(aquarium, species) {
    console.log('we made it to fish town');
    var settings = {
        stuff: {
            aquarium: aquarium,
            species: species
        }
    };
    $.ajax({
        type: 'POST',
        data: settings,
        url: '/game/populate_aquarium',
        dataType: 'script'
    });
}

function clean_aquarium_water() {
    this_guy.parent().find('.tank-dirtiness-bar').empty();
    $('#water-maker').empty();
    $('#water-maker').text('water');
}



function feed_aquarium() {
this_guy.parent().find('.tank-food-bar').empty();
    $('#food-maker').empty();
    $('#food-maker').text('food');
}

$(function() {
    $("#species-supply").on('click', "#food-maker", make_food);
    $("#aquaria-supply").on('click', "#water-maker", make_water);
    $("#species-supply").on('mouseover', ".fish-div", species_draggable);
    $("#aquaria-holder").on('mouseover', '.fish-in-aquarium', fish_draggable);
    tanks_get_dirty_timer();
    tanks_need_food_timer();
});