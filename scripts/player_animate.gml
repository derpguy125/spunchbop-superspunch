if ground then {
    if moving then {
        sprite_index = sprBobMove;
        image_speed = max(0.1,(abs(hsp)/(msp*2)));
    } else {
        sprite_index = sprBobIdle;
        image_speed = 0.1;
    }
} else {
    if pound then sprite_index = sprBobPound else {
        if vsp < 0 then sprite_index = sprBobJump;
        else sprite_index = sprBobFall;
    }
}
