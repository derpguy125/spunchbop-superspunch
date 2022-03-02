// scr_player_collision(x, y, layer)
if (place_meeting(argument0, argument1, parSolid))           return true;   // Check for normal solid
if (ground and place_meeting(argument0, argument1, parPlatform)) return true;   // Check for platform (only while on ground)
if (argument2 == 0) return place_meeting(argument0, argument1, parLow);     // Check for low layer
else                return place_meeting(argument0, argument1, parHigh);    // Check for high layert
