//ground pount

if pound = false and ground = false {
    if keyboard_check_pressed(vk_down) && allow_input then {
        pound = true;
        allow_input = false;
        vsp = 8;
        hsp = 0;
    }
}
