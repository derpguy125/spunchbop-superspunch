// jumping and gravity

if ground and keyboard_check_pressed(ord("Z")) && allow_input then {
    vsp = -jmp;
    ground = false;
    angle = 0;
}

vsp += grv;
