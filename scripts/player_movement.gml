if keyboard_check(vk_left) then hsp = -2;
else if keyboard_check(vk_right) then hsp = 2;
else hsp = 0;

if ground and keyboard_check_pressed(ord("Z")) then {
    vsp = -6;
    ground = false;
}

vsp += grv;
