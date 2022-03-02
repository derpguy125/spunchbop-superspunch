// ==== FUNCTION ====================================================================
// scr_player_collision_right_limiter(Angle)
// ==================================================================================
//  Tests a collision within the left limiter.

    var CollisionOffsetX, CollisionOffsetY, CollisionTest;

    // ------------------------------------------------------------------------------

        // ---- Change collision mask -----------------------------------------------
        sprite_index     = maskLines;
        image_index      = floor(argument0/10);
        argument0        = wrap_angle(floor(argument0));

        // ---- Calculate position based on offset ----------------------------------
        CollisionOffsetX = x+cos(argument0)*8+sin(argument0)*10;
        CollisionOffsetY = y-sin(argument0)*8+cos(argument0)*10;
        CollisionTest    = player_collision(CollisionOffsetX, CollisionOffsetY, parSolid) &&
                           !place_meeting(CollisionOffsetX, CollisionOffsetY, parObstacle);

        // ---- Revert collision mask -----------------------------------------------
        sprite_index     = maskMain;

    // ------------------------------------------------------------------------------
    return CollisionTest;
