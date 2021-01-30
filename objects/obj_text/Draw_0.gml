//Figure out how wide the box is
var halfw = w * 0.5;
draw_set_color(c_black);
draw_set_alpha(0.5);
//Draw a rounded rectangle using the width of the text and the border margin
draw_roundrect_ext(x - halfw - border,y - h - (border*2), x + halfw + border, y,15,15,false);
//Gotta reset alpha or else the whole game will be at half alpha
draw_set_alpha(1);

//Draw text
scr_drawsettext(c_white,fnt_sign,fa_center,fa_top);
draw_text(x,y - h - border,text_current);