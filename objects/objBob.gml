#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// init shit

hsp = 0;
vsp = 0;

ground = true;
pound = false;

grv = 0.2;
jmp = 6.5;
mvs = 16;

dir = 1;
acc = 0.25;
frc = acc;

top = 4;
msp = 16;

moving = false;

angle = 0;
layer = 0;

terrain_check       = 0         // Checks the terrain group the player is colliding with.
terrain_check_timer = 10;       // How long it takes to check.

screenLocked = false;
lookShiftX = 0;
lookShiftY = 0;

allow_input = true;
allow_x_movement = true;
allow_y_movement = true;

// collisions



// other

attack = false;
attackTimer = 0;

spatulas = 0;
hurt = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// collision shit
    // movement control

    if allow_x_movement {
    // ========== PART 1 ==============================================================================================
        /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         -> X movement.
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        */

        // Limit X Speed
        hsp = scr_clamp(hsp, -msp, msp);

        x   +=  cos(degtorad(angle)) * hsp;
        y   -=  sin(degtorad(angle)) * hsp;

        // move the player outside in case he has got stuck into the wall - Right -
        while (hsp > 0 && player_collision_right( x, y, angle, maskMid ) == true )
        {
            x   -=  cos(degtorad(angle));
            y   +=  sin(degtorad(angle));
        }

        // move the player outside in case he has got stuck into the wall - Left -
        while (hsp < 0 && player_collision_left( x, y, angle, maskMid ) == true )
        {
            x   +=  cos(degtorad(angle));
            y   -=  sin(degtorad(angle));
        }
    }

    if allow_y_movement {
    // ========== PART 2 ==============================================================================================
        /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         -> Y movement.
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        */

        vsp = scr_clamp(vsp, -mvs, mvs);

        if (ground == false) {
            y += vsp;

            if (vsp <= 0 && player_collision_top(x, y, 0, maskBig ) == true && ground == false)
              {
                if ( player_collision_left_edge( x, y, 180 ) && player_collision_right_edge( x, y, 180 ) )
                {
                    angle = (player_get_angle( x, y, 180 ));
                    if (angle < 170 || angle > 190)
                    {
                        hsp =   -sin(degtorad(angle)) * (vsp*1.5);
                        ground  =   true;
                        pound = false;
                    } else angle = 0;
                }
              }
        }

        while (vsp < 0 && player_collision_top( x, y, 0, maskMid ) == true )
        {
            y   +=  1;
        }

        while (vsp > 0 && player_collision_bottom( x, y, 0, maskMid ) == true )
        {
            y   -=  1;
        }

        // See if the player hit monitors.
        //player_handle_monitors(-1);
        // check for landing
         if (vsp >= 0 && player_collision_bottom( x, y, 0, maskBig ) == true)
         {

            //if (scr_player_collision_bottom_object(x, y, angle, maskBig, par_spring) == false)
            //{
            if (player_collision_left_edge(x, y, 0) && player_collision_right_edge(x, y, 0))
            angle   =   player_get_angle(x, y, 0); else angle = 0;

            if (player_collision_bottom_object(x, y, angle, maskMain, parSpring)) angle = 0;

            hsp -=  sin(degtorad(angle)) * vsp;
            vsp =   0;
            ground  =   true;
            pound =   false;
            //}


         }

         // wall collision (yeah, again, we should perform that since the y axys has recently changed)
            while (player_collision_right( x, y, angle, maskMid ) == true )
             {
             x   -=  cos(degtorad(angle));
             y   +=  sin(degtorad(angle));
             }

             while (player_collision_left( x, y, angle, maskMid ) == true )
             {
              x   +=  cos(degtorad(angle));
              y   -=  sin(degtorad(angle));
              }
    }

    if allow_x_movement {
    // ========== PART 3 ==============================================================================================
        /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         -> Slopes!
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        */
        if (ground == true)
        {
            if ( player_collision_main( x, y ) )
            {
                do
                {
                    x   -=  sin(degtorad(angle));
                    y   -=  cos(degtorad(angle));
                } until ( !player_collision_main( x, y ) )
            }
            if ( player_collision_slope( x, y, angle, maskMid ) && !player_collision_main( x, y ) )
            {
                do
                {
                    x   +=  sin(degtorad(angle));
                    y   +=  cos(degtorad(angle));
                } until ( player_collision_main( x, y ) )
            }
        }
    }

    if allow_y_movement {
    // ========== PART 4 ==============================================================================================
        /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         -> Other stuff
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        */


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
        {
            // Store the new angle
            angle_holder   =   player_get_angle( x, y, angle );

            // Check if difference is less than 45. If it is, linear interpolate the angle, so it results on smoother rotation.
            // Otherwise, set the new angle normally. Remember that linear interpolation formula is the next:
            //
            // final = a*t + b*(1-t); where t is the interpolation value, wich goes from 0 to 1
            //
            // There's also a shorter and faster method, wich is the one we're going to use:
            //
            // final = a + (b-a)*t;

            if (abs(angle-angle_holder)<45) angle = angle + (angle_holder-angle)*0.5;
            else                            angle = angle_holder;
        } else {
            angle   =   0;
        }
    }

    /* Extra: Die from low height */
            if (y > room_height)
            {
                //player_kill();
                exit;
            }
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// other step

player_movement();
player_animate();
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// extended camera

    if (hsp >= (top / 2)) {
        if (lookShiftX < 64 && lookShiftY >= 0) lookShiftX += 2;
    } else {
        if (lookShiftX > 0) lookShiftX -= 2;
    }

    if (hsp <= -(top / 2)) {
        if (lookShiftX > -64 && lookShiftY <= 0) lookShiftX -= 2;
    } else {
        if (lookShiftX < 0) lookShiftX += 2;
    }
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///View code


if !screenLocked {
    view_xview[0] = (round(x) - (view_wview[0] div 2)) + lookShiftX;
}
    view_yview[0] = (round(y) - (view_hview[0] div 2)) + lookShiftY;

if view_xview[0] <= 0                           then view_xview[0] = 0;
if view_xview[0] >= room_width  - view_wview[0] then view_xview[0] = room_width  - view_wview[0];

if view_yview[0] <= 0                           then view_yview[0] = 0;
if view_yview[0] >= room_height - view_hview[0] then view_yview[0] = room_height - view_hview[0];
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self_rounded();

draw_set_font(fnSmallSpongeboy)

var hexX, hexY;

hexX = base_convert(string(round(x)),10,16,4);
hexY = base_convert(string(round(y)),10,16,4);

draw_text(view_xview[0] + 8, view_yview[0] + 8, "DEBUG LOG#" + string(hexX) + string(hexY));
