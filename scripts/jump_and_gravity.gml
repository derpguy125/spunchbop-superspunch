// jumping and gravity

if ground and keyboard_check_pressed(ord("Z")) && allow_input then {

    vsp = -(sin(degtorad(angle)) * hsp) + (cos(degtorad(angle)) * jmp);
    hsp =  (cos(degtorad(angle)) * hsp) + (sin(degtorad(angle)) * jmp);

    ground = false;
    angle = 0;
}

vsp += grv;
