/*
*       player_collision_top( x, y, angle, mask );
*
*   =============================================
*
*   This functions returns if the top sensor has collided
*
*/

    /* Up and down collision functions works in a very similar way than the
       left/right ones. The only difference is in how we swap the trigonometric
       functions in order to calculate the position projected over the Y axys. For
       example:

       If for calculating the x projected/rotated positions is:

        rotated_x = x + cos( angle ) * distance;
        rotated_y = y - sin( angle ) * distance;

       The same for y projected/rotated position is:
        rotated_x = x + sin( angle ) * distance;
        rotated_y = y + cos( angle ) * distance;

       This is the main difference. The other stuff is the same
    */

    // Store the actual mask for setting it up later
    temporal_mask   =   mask_index;
    mask_index      =   argument3;

    // Test collision
    collision_test  =   player_collision( floor(argument0 - sin(degtorad(argument2)) * 11),
                                          floor(argument1 - cos(degtorad(argument2)) * 11),
                                          layer );

    // Set to the old mask
    mask_index      =   temporal_mask;

    // Calculate the direction
    return  collision_test;
