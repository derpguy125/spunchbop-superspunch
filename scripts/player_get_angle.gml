/*
*       player_get_angle( x, y, angle );
*
*   =============================================
*
*   This functions returns the angle of the surface at the given position & angle.
*
*/

    /* This is one of the pilars of the game engine, the angle detection.
       This might appear hard at the first sight but the truth is that it's a
       very easy and simple method. The concept of this method is having two sensors
       or spots, both at each side of the player in a distance of like... 8 pixels.

       And start pushing down those two sensors or spots a limited amount of times
       until they collide with any obstacle object. When this happens, the only
       thing we have to do is calculate the slope or angle between those two points.

       In Game Maker the function used is "point_direction" in order to calculate
       the angle between the two points.
    */

    // Temporal values
    temporal_mask   =   mask_index;
    mask_index      =   maskDot;

    // Limit the angle we're using from 360 directions to 36 for preventing thikering
    // when detecting the collision
    argument2   = round(argument2 / 10) * 10;

    // Set the starting position of the sensors (depending on angle)
    point_1_x   =   argument0 - cos(degtorad(argument2)) * 7;   // Left point
    point_1_y   =   argument1 + sin(degtorad(argument2)) * 7;

    point_2_x   =   argument0 + cos(degtorad(argument2)) * 7;   // Right point
    point_2_y   =   argument1 - sin(degtorad(argument2)) * 7;

    // Now, perform the checking. Push down the two points in order to know the angle
    repeat(25)      // Repeat a limited amount of times
    {
        if (player_collision(floor(point_1_x), floor(point_1_y), layer) == false)
        {
            point_1_x   +=  sin(degtorad(argument2));
            point_1_y   +=  cos(degtorad(argument2));
        }
        if (player_collision(floor(point_2_x), floor(point_2_y), layer) == false)
        {
            point_2_x   +=  sin(degtorad(argument2));
            point_2_y   +=  cos(degtorad(argument2));
        }
    }

    // Return to the old mask
    mask_index      =   temporal_mask;

    // Calculate the direction
    return floor(point_direction(point_1_x,point_1_y,point_2_x,point_2_y));
