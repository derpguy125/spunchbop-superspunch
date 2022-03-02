if !allow_input exit;

if (ground && (angle > 45 && angle < 320) || round(hsp) != 0) {
    hsp -= sin(degtorad(angle)) * 0.125; // Decelerate normally.
}

if (input_alarm <= 0) {
            if (key_left) {
                if (hsp > 0)
                    hsp -= dacc;
                else
                if (hsp > -top)
                    hsp -= acc;

                moving = true;
                dir = -1;
            }

            if (key_right) {
                if (hsp < 0)
                    hsp += dacc;
                else
                if (hsp < top)
                    hsp += acc;

                moving = true;
                dir = 1;
            }

            if (!key_left && !key_right) {
                hsp = max(abs(hsp) - frc, 0) * sign(hsp);
                moving = false;
            }
        }


    // fall if there isn't enough speed
   if (angle >= 45 && angle <= 315 && ground == true && abs(hsp) < 2.5)
   {
    if(angle >= 90 && angle <= 270){
       vsp =   -sin(degtorad(angle))*hsp;
       hsp =   cos(degtorad(angle))*hsp;
       ground  =   false;
    }else{
        input_alarm = 40;
    }
   }

    // fall off the ground if the edges aren't colliding
     if (ground == true && angle != 0 &&
      (player_collision_left_edge( x, y, angle ) == false || player_collision_right_edge( x, y, angle ) == false  ))
       {
        vsp =   -sin(degtorad(angle))*hsp;
        hsp =   cos(degtorad(angle))*hsp;
        ground  =   false;
        }

        // get new angle
        if (ground == true && player_collision_left_edge( x, y, angle ) && player_collision_right_edge( x, y, angle ))
            angle = (player_get_angle( x, y, angle ));
        else
            angle = 0;

        // full stop when we're colliding a wall
        if (hsp > 0 && player_collision_right(x,y,angle,maskBig))
        {
            hsp = 0;
        }
        if (hsp < 0 && player_collision_left(x,y,angle,maskBig))
        {
            hsp = 0;
        }
