#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wave = 0;

jbfmod_play_song(1);
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
    draw_background_part(bgSineWave,0,(yy*8),640,8,(sin((wave + (yy/16))*2)*4)-8,(yy*8));
}

draw_sprite_ext(sprSpunchLogo,0,160,96,1,1,sin(wave)*8,c_white,1);
#define KeyPress_13
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=601
applies_to=self
invert=0
arg0=jbfmod_stop_song
arg1=1
arg2=0
arg3=0
arg4=0
arg5=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=rmTest
arg1=0
*/
