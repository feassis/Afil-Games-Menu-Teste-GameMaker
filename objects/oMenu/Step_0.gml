/// @description Insert description here
// You can write your code in this editor
mouseOver = false;

show_debug_message("oMenu step event")

if(point_in_rectangle(mouse_x, mouse_y,x + 5,y + 5, x + width, y + height))
{
	mouseOver = true;
	
	if(mxPrev != mouse_x) || (myPrev != mouse_y)
	{
		var _mouseHoverLine = (mouse_y - y) div heightLine;
		if !(description == -1) _mouseHoverLine -= 1;
		if (_mouseHoverLine < 0) _mouseHoverLine = 0;
		if (_mouseHoverLine > optionsCount - 1) _mouseHoverLine = optionsCount - 1;
		hover = _mouseHoverLine;
	}
}

hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

if (hover > optionsCount -1) hover = 0;
if (hover < 0) hover = optionsCount - 1;

if ((mouse_check_button_pressed(mb_left) && mouseOver) || keyboard_check_pressed(vk_enter))
{
	if (array_length(options[hover]) == 2)
	{
		var func = options[hover][1];
		if(func != -1)
		{
			func();
		}
		else
		{
			instance_destroy()
		}
	}
}

myPrev = mouse_y;
mxPrev = mouse_x;

