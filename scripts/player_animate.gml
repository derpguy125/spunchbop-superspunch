if ground then {
    if hsp != 0 then {
        sprite_index = sprBobMove;
        image_speed = (abs(hsp)/(msp*2));
    } else {
        sprite_index = sprBobIdle;
    }
}
