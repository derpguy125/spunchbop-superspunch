if ground then {
    if !attack then {
        if moving then {
            sprite_index = sprBobMove;
            image_speed = max(0.1,(abs(hsp)/(top*2)));
        } else {
            sprite_index = sprBobIdle;
            image_speed = 0.1;
        }
    } else {
        sprite_index = sprBobAttack;
        image_speed = 1;
    }
} else {
    if pound then sprite_index = sprBobPound else {
        if vsp < 0 then sprite_index = sprBobJump;
        else sprite_index = sprBobFall;
    }
}
