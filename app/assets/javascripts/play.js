var customer_timer = 0;
var customer_interval = 6;
var master_time = 0;
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
var game_over_man;


function start_round() {
    master_timer = setInterval(time_master, 1000);
}

function time_master() {
    fish_bob();
    customer_timer++;
    console.log(customer_timer);
    master_time++;
    console.log(master_time);
    if (master_time == 180) {
        round_over();
    }
    if (customer_timer == customer_interval) {
        customer_enters();
    }
}

// function fish_bob() {
//     $(".fish-in-aquarium").animate({
//         top: "18px"
//     }, 400).animate({
//         top: " "
//     }, 370);
// }

function customer_enters() {
    $('#customer').css({
        'top': '30%'
    });
    setTimeout(customer_leaves, 1000 * (Math.floor(1 + Math.random() * 4)));
}

function customer_leaves() {
    $('#customer').css({
        'top': '-9999px'
    });
    customer_timer = 1;
    customer_interval = 6;
}

function round_over() {
    clearInterval(master_timer);
    $.ajax({
        type: 'POST',
        data: 'game over man',
        url: '/game/round_over',
        dataType: 'script'
    });
}

function tanks_need_food_timer() {
    hunger_timer1 = setInterval(tank1_needs_food, parseInt($($('.users-aquarium')[0]).find('h2').text() * 5, 10) + 300);
    hunger_timer2 = setInterval(tank2_needs_food, parseInt($($('.users-aquarium')[1]).find('h2').text() * 5, 10) + 300);
    hunger_timer3 = setInterval(tank3_needs_food, parseInt($($('.users-aquarium')[2]).find('h2').text() * 5, 10) + 300);
    hunger_timer4 = setInterval(tank4_needs_food, parseInt($($('.users-aquarium')[3]).find('h2').text() * 5, 10) + 300);
    hunger_timer5 = setInterval(tank5_needs_food, parseInt($($('.users-aquarium')[4]).find('h2').text() * 5, 10) + 300);
    hunger_timer6 = setInterval(tank6_needs_food, parseInt($($('.users-aquarium')[5]).find('h2').text() * 5, 10) + 300);
}

function tanks_get_dirty_timer() {
    aquarium_timer1 = setInterval(dirty_tanks1, parseInt($($('.users-aquarium')[0]).find('h1').text() * 5, 10) + 300);
    aquarium_timer2 = setInterval(dirty_tanks2, parseInt($($('.users-aquarium')[1]).find('h1').text() * 5, 10) + 300);
    aquarium_timer3 = setInterval(dirty_tanks3, parseInt($($('.users-aquarium')[2]).find('h1').text() * 5, 10) + 300);
    aquarium_timer4 = setInterval(dirty_tanks4, parseInt($($('.users-aquarium')[3]).find('h1').text() * 5, 10) + 300);
    aquarium_timer5 = setInterval(dirty_tanks5, parseInt($($('.users-aquarium')[4]).find('h1').text() * 5, 10) + 300);
    aquarium_timer6 = setInterval(dirty_tanks6, parseInt($($('.users-aquarium')[5]).find('h1').text() * 5, 10) + 300);
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
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function feed_tank2(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function feed_tank3(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function feed_tank4(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function feed_tank5(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function feed_tank6(tank) {
    var food_bar = $(tank).parent().find('.tank-food-bar');
    var food = $('<div>');
    if (food_bar.children().length < 74) {
        food.addClass('food');
        food.appendTo(food_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
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

    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function dirty_tank2(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function dirty_tank3(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function dirty_tank4(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function dirty_tank5(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
    }
}

function dirty_tank6(tank) {
    var dirty_bar = $(tank).parent().find('.tank-dirtiness-bar');
    var dirt = $('<div>');
    if (dirty_bar.children().length < 74) {
        dirt.addClass('dirt');
        dirt.css('background-color', dirt_color());
        dirt.appendTo(dirty_bar);
    } else {
        $(tank).parent().css({
            'display': 'none'
        });
        clearInterval(aquarium_timer1);
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
    }),
    $('#food-maker').draggable('enable');
}

function make_water() {
    water_timer = setInterval(add_water, 1);
    start_round();

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
    $('#water-maker').draggable('enable');
}

function dirt_color() {
    var color = "rgb(" + _.random(30, 80) + "," + _.random(80, 180) + "," + _.random(19, 90) + ")";
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
$('#customer').droppable({
    drop: function(event, ui) {
        var fish = (ui.draggable.context.dataset.id);
        (ui.draggable).css({
            'display': 'none'
        });
        sell_fish_to_customer(fish);
    }
});

function sell_fish_to_customer(fish) {
    var settings = {
        stuff: {
            fish: fish
        }
    };
    $.ajax({
        type: 'POST',
        data: settings,
        url: '/game/sell_fish',
        dataType: 'script'
    });
}

function add_aquarium_to_holder() {
    console.log($(this).data().id);
    var settings = {
        id: $(this).data().id
    };
    $.ajax({
        type: "POST",
        data: settings,
        url: '/aquaria/' + $(this).data().id + '/sell_me'
    });
}

$('.users-aquarium').droppable({
    drop: function(event, ui) {
        var text = (ui.draggable.context.outerText);
        var aquarium = $(event.target).find('p').text();
        this_guy = $(this);
        console.log(this_guy);
        if (text == 'water') {
            clean_aquarium_water(this_guy);
        } else if (text == 'food') {
            feed_aquarium(this_guy);
        } else if (text == 'fish') {} else {
            add_fish_to_aquarium(aquarium, text);
        }
    }
});

function add_fish_to_aquarium(aquarium, species) {
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

function clean_aquarium_water(this_guy) {
    this_guy.parent().find('.tank-dirtiness-bar').empty();
    $('#water-maker').empty();
    $('#water-maker').text('water');
    $('#water-maker').draggable('disable');
}

function feed_aquarium(this_guy) {
    this_guy.parent().find('.tank-food-bar').empty();
    $('#food-maker').empty();
    $('#food-maker').text('food');
    $('#food-maker').draggable('disable');
}

$(function() {
    $("#species-supply").on('click', "#food-maker", make_food);
    $("#aquaria-supply").on('click', "#water-maker", make_water);
    $("#species-supply").on('mouseover', ".fish-div", species_draggable);
    $("#aquaria-holder").on('mouseover', '.fish-in-aquarium', fish_draggable);
    $('#aquaria-supply').on('click', '.aquarium', add_aquarium_to_holder);
    tanks_get_dirty_timer();
    tanks_need_food_timer();
});