// scr_player_rotate_toward(destination, source, step)

    var angle_difference;
    angle_difference = argument0-argument1;

    // -------------------------------------------------------------------------------------
    if (angle_difference == 0) return argument0;

    if (abs(angle_difference) < 180)
    {
        if ((angle_difference) < 0)
        {
            argument1 -= argument2;
            if (argument1 <= argument0) argument1 = argument0;
        }
        else
        {
            argument1 += argument2;
            if (argument1 >= argument0) argument1 = argument0;
        }
    }
    else
    {
        if ((angle_difference) < 0) argument1 += argument2;
        else                        argument1 -= argument2;
    }

    return wrap_angle(argument1);
