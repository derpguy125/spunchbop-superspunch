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

dir = 1;
acc = 0.25;
msp = 4;

moving = false;

screenLocked = false;

// collisions

//I think this is better calculation for single mask
sprite_bbox_top = bbox_top - y;
sprite_bbox_bottom = bbox_bottom - y;
sprite_bbox_right = bbox_right - x;
sprite_bbox_left = bbox_left - x;

// other

spatulas = 0;
hurt = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/// step

player_movement();

player_collisions();

player_animate();
#define Step_2
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
