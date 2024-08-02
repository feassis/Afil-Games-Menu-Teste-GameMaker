/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 27623CE5
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2922641A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)var inst = instance_find(oMenu, 0)$(13_10)$(13_10)if(!inst){$(13_10)	Menu($(13_10)	mouse_x,$(13_10)	mouse_y,$(13_10)	[$(13_10)		["Volume +",  VolumeUp],$(13_10)		["Volume -",  VolumeDown],$(13_10)		["Tela Cheia",  ToggleFullscream],$(13_10)		["Fechar",  -1]$(13_10)	]$(13_10)	, "Config")$(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

var inst = instance_find(oMenu, 0)

if(!inst){
	Menu(
	mouse_x,
	mouse_y,
	[
		["Volume +",  VolumeUp],
		["Volume -",  VolumeDown],
		["Tela Cheia",  ToggleFullscream],
		["Fechar",  -1]
	]
	, "Config")
}