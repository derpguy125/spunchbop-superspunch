// attack
if !attack then {
    if ground and keyboard_check_pressed(ord("X")) && allow_input then {
        attack = true;
        image_index = 0;
        allow_input = false;
        attackTimer = 16;
    }
} else {
    if attackTimer = 0 then {
        attack = false;
        allow_input = true;
    }
    attackTimer -= 1;
}
