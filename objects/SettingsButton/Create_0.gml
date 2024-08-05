/// @description Insert description here
// You can write your code in this editor
function ExecuteButtonFunction()
{
	var inst = instance_find(oMenu, 0)

	if(!inst){
		Menu(
		display_get_width()/8,
		display_get_height()/8,
		[
			["Volume +",  VolumeUp],
			["Volume -",  VolumeDown],
			["Tela Cheia",  ToggleFullscream],
			["Fechar",  -1]
		]
		, "Config", display_get_width()/4, display_get_height()/4)
	}
}