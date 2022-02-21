if keyboard_check(vk_left) then {
    dir = -1;
    moving = true;
    if hsp > -msp then hsp -= acc;
} else if keyboard_check(vk_right) then {
    dir = 1;
    moving = true;
    if hsp < msp then hsp += acc;
} else {
    if hsp > 0.5 then hsp -= acc;
    else if hsp < -0.5 then hsp += acc;
    else {
        hsp = 0;
        moving = false;
    }
}

if ground and keyboard_check_pressed(ord("Z")) then {
    vsp = -jmp;
    ground = false;
}

vsp += grv;
