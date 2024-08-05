draw_sprite_stretched(spr_button, 0, x - margin, y-margin, widthFull, heightFull)

draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc 
var inc = 0

if(description == -1){

 _desc = false
}
else
{
	_desc = true
	inc = 1
}

for(l = 0; l < (optionsCount + inc); l++)
{
	draw_set_color(c_white);
	
	if(l == 0) && (_desc)
	{
		draw_text(x, y, description + " | " + addtiveDescription)
	}
	else
	{
		show_debug_message(options);
		var str = options[l - inc][0]
		if(hover == l - inc)
		{
			draw_set_color(c_yellow);
			str = hoverMarker + str;
		}
		
		draw_text(x, y + l*heightLine, str);
		draw_set_color(c_white);
	}
	
}