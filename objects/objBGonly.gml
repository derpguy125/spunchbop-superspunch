#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wave = 0;

wave2 = -320;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wave += 0.02;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(fnSpongeboy);

for (yy = 0; yy < 30; yy += 1) {
    for (xx = 0; xx < 80; xx += 1) {
        draw_background_part(bgSineWave,(xx*8),(yy*8),8,8,view_xview[0] + (xx*8) + (sin((wave + (yy/16))*2)*4)-8,view_yview[0] + (yy*8) + (cos((wave + (xx/16))*2)*4));
    }
}
