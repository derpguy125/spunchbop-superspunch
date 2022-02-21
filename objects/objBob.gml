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

screenLocked = false;

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

player_movement();
#define Step_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///View code


if screenLocked = false {
    view_xview[0] = round(x) - (view_wview[0] div 2);
}
    view_yview[0] = round(y) - (view_hview[0] div 2);

if view_xview[0] <= 0                           then view_xview[0] = 0;
if view_xview[0] >= room_width  - view_wview[0] then view_xview[0] = room_width  - view_wview[0];

if view_yview[0] <= 0                           then view_yview[0] = 0;
if view_yview[0] >= room_height - view_hview[0] then view_yview[0] = room_height - view_hview[0];
