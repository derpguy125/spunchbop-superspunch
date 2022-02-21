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

grv = 0.2;

// collisions

//I think this is better calculation for single mask
sprite_bbox_top = bbox_top - y;
sprite_bbox_bottom = bbox_bottom - y;
sprite_bbox_right = bbox_right - x;
sprite_bbox_left = bbox_left - x;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// step

player_collisions();
