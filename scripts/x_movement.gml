// x movement
if keyboard_check(vk_left) && allow_input then {
    dir = -1;
    moving = true;
    if hsp > -top then hsp -= acc;
} else if keyboard_check(vk_right) && allow_input then {
    dir = 1;
    moving = true;
    if hsp < top then hsp += acc;
} else {
    if hsp > 0.5 then hsp -= acc;
    else if hsp < -0.5 then hsp += acc;
    else {
        hsp = 0;
        moving = false;
    }
}
