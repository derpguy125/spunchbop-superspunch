if ground then {
    if moving then {
        sprite_index = sprBobMove;
        image_speed = (abs(hsp)/(msp*2));
    } else {
        sprite_index = sprBobIdle;
    }
} else {
    if vsp < 0 then sprite_index = sprBobJump;
    else sprite_index = sprBobFall;
}