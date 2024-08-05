/// @description Insert description here
// You can write your code in this editor
menuButtons = []

var i = 0;
var inst;
while (true) {
    inst = instance_find(ButtonParent, i);
    if (inst == noone) {
        break;
    }
	inst.buttom_order = i
	
    array_push(menuButtons, inst);
    i++;
}

indexCap = array_length(menuButtons) - 1;

if(array_length(menuButtons) >= 2)
{
	for(var j = 0; j < array_length(menuButtons) - 1; j++)
	{
		if(menuButtons[j].y > menuButtons[j+1])
		{
			show_debug_message("|||||=====> j index: " + menuButtons[j].buttom_Order)
			show_debug_message("|||||=====> j + 1 index: " + menuButtons[j + 1].buttom_Order)
			
			var temp = menuButtons[j + 1].buttom_order;
			
			menuButtons[j].buttom_order = menuButtons[j+1].buttom_order
			
			menuButtons[j+1].buttom_order = temp
		}
	}
}
	

