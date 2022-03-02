/*
*       scr_player_collision_main_object( x, y, object );
*
*   =============================================
*
*   This functions returns if the main sensor has collided
*
*/

    // Store the actual mask for setting it up later
    temporal_mask   =   mask_index;
    mask_index      =   maskMain;

    // Test collision
    collision_test  =   instance_place( floor(argument0), floor(argument1), argument2 );

    // Set to the old mask
    mask_index      =   temporal_mask;

    // Calculate the direction
    return  collision_test;
