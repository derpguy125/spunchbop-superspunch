#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wave = 0;

jbfmod_play_song(1);

jbfmod_set_looping(true)

company = "ROBERT TEAM PRESENTS"

wave2 = -320;

cracktro = "PRESS ENTER TO BEGIN, USE ARROW KEYS TO MOVE, PRESS Z TO JUMP - GREETINGS FROM ROBERT TEAM!! WE PRESENT TO YOU OUR NEWEST FANGAME YET! SPUNCH BOP SPINGLEDINGLE IN... SOOPERSPUNCH!! BASED ON THE PS1 CULT CLASSIC SPONGEBOB SQUAREPANTS SUPERSPONGE, DEVELOPED BY CLIMAX ENTERTAINMENT AND PUBLISHED BY THQ AND NICK GAMES... WE HOPE YOU ENJOY THE MOST AMAZING SPONGEBOB FANGAME DEVELOPED BY US!! CODE AND ART BY THOMAS 'DG125' CROSSLIN. CURRENTLY PLAYING 28K MODEM BY PHOENIX OF THE MODARCHIVE, USING AN ACTUAL XM FILE, NO LESS, USING THE JBFMOD EXTENSION FOR GAMEMAKER 6. BUILT USING RENEX'S GAMEMAKER 8.2 PROJECT. WHAT ARE YOU STILL STANDING HERE FOR? GET PLAYING!!"
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
wave += 0.02;

wave2 += 2;

if wave2 > (string_length(cracktro)*16) + 320 then wave2 = -320
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_font(fnSpongeboy);

for (yy = 0; yy < 30; yy += 1) {
    draw_background_part(bgSineWave,0,(yy*8),640,8,(sin((wave + (yy/16))*2)*4)-8,(yy*8));
}
for (jj = 0; jj < string_length(cracktro); jj+=1) {
    draw_text((-16+(jj*16))-(cos((wave*(sin(wave)*8)) + (jj/4)) * 4),16 + (sin((wave*(cos(wave)*8)) + (jj/4)) * 4),string_char_at(company,jj));
}

draw_sprite_ext(sprSpunchLogo,0,160,96,1,1,sin(wave)*8,c_white,1);
draw_sprite_ext(sprSpunchLogo,1,160,128 + sin(wave)*4,1,1,0,c_white,1);


for (xx = 0; xx < string_length(cracktro); xx += 1) {
    var color;
    color = make_color_hsv(string_length(cracktro) + ((xx * 8) + (wave * 50)),255,255);

    draw_set_color(color)
    draw_text(((-wave2)) + (xx * 16),208 + (sin((wave2/25) + (xx/4)) * 8) ,string_char_at(cracktro,xx))
}

draw_set_color(c_white)
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
action_id=603
applies_to=self
*/
jbfmod_play_song(2)

jbfmod_set_order(26)

jbfmod_set_looping(true)
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=224
invert=0
arg0=rmTest
arg1=0
*/
