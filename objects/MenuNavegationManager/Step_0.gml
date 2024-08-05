/// @description Insert description here
// You can write your code in this editor

var oMenuInst = instance_find(oMenu, 0);

if(oMenuInst == noone)
{
	var input_change = keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down)

	if(input_change > 0)
	{
		IncrementSelectedIndex()
	}
	else if(input_change < 0)
	{
		DecrementSelectedIndex()
	}

	if (keyboard_check_pressed(vk_enter))
	{
		menuButtons[selectedIndex].ExecuteButtonFunction()
	}
}


