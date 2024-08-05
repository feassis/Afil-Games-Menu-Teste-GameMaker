/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0C094DCC
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 3A0809F9
/// @DnDArgument : "font" "fnt_menu"
/// @DnDSaveInfo : "font" "fnt_menu"
draw_set_font(fnt_menu);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3C2BADD9
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6ED77F88
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var navegation = instance_find(MenuNavegationManager, 0)$(13_10)$(13_10)///show_debug_message("**** button order = " + string(buttom_order))$(13_10)///show_debug_message("**** navegation index = " + string(navegation.selectedIndex))$(13_10)$(13_10)$(13_10)if(navegation != noone && buttom_order == navegation.selectedIndex)$(13_10){$(13_10)	draw_set_color(c_yellow)$(13_10)}$(13_10)else$(13_10){$(13_10)	draw_set_color(c_white)$(13_10)}"
/// @description Execute Code
var navegation = instance_find(MenuNavegationManager, 0)

///show_debug_message("**** button order = " + string(buttom_order))
///show_debug_message("**** navegation index = " + string(navegation.selectedIndex))


if(navegation != noone && buttom_order == navegation.selectedIndex)
{
	draw_set_color(c_yellow)
}
else
{
	draw_set_color(c_white)
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6979FC53
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "button_text"
draw_text(x + 0, y + 0, string(button_text) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 6F1976C8
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5CCD68B6
draw_set_colour($FFFFFFFF & $ffffff);
var l5CCD68B6_0=($FFFFFFFF >> 24);
draw_set_alpha(l5CCD68B6_0 / $ff);