#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wave = 0;
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
for (yy = 0; yy < 30; yy += 1) {
    draw_background_part(bgSineWave,0,(yy*8),320,8,(sin((wave + (yy/16))*2)*4)-4,(yy*8));
}
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=rmTest
arg1=0
*/
