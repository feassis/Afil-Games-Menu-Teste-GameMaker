// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Menu(_x, _y, _options, _description = -1, extraWidth = 0, extraHeight = 0, _addtiveDescription = "")
{
	with(instance_create_depth(_x, _y, -999, oMenu)){
		options = _options
		description = _description
		optionsCount = array_length(_options)
		hoverMarker = "* ";
		addtiveDescription = _addtiveDescription
		
		margin = 8
		
		draw_set_font(fnt_menu);
		
		width = 1;
		
		if(_description != -1) width = max(width, string_width(_description))
		
		for(var i = 0; i < optionsCount; i++)
		{
			width = max(width, string_width(_options[i][0]));
		}
		
		width += string_width(hoverMarker);
		
		heightLine = 70;
		height = heightLine * (optionsCount + !(description == -1));
		
		widthFull = width + margin * 2 + extraWidth;
		heightFull = height + margin * 2 + extraHeight;
	}
}

function SaveConfig()
{
	ini_open("config.ini");
	
	ini_write_real("Config", "Volume", audio_sound_get_gain(BgMusic));
	ini_write_real("Config", "Fullscreen", window_get_fullscreen());
	
	ini_close();
	
}

function LoadConfig()
{
	ini_open("config.ini")
	
	audio_sound_gain(BgMusic, ini_read_real("Config", "Volume", audio_sound_get_gain(BgMusic)), 0);
	window_set_fullscreen(ini_read_real("Config", "Fullscreen", window_get_fullscreen()));
	
	ini_close();
}

function ChangeOMenuAddtiveDescription(addtive)
{
	var oMenuInst = instance_find(oMenu, 0)
	
	oMenu.addtiveDescription = addtive
}

function VolumeUp() 
{
	var music_volume = audio_sound_get_gain(BgMusic)
	if (music_volume < 1.0) {
		
        music_volume += 0.1;
        audio_sound_gain(BgMusic, music_volume, 0);
		
		ChangeOMenuAddtiveDescription("Volume Atual: " + string(music_volume * 100) + "%");
    }
	
	SaveConfig()
}

function VolumeDown()
{
	var music_volume = audio_sound_get_gain(BgMusic)
	if (music_volume > 0.0) {
        music_volume -= 0.1;
        audio_sound_gain(BgMusic, music_volume, 0);
		ChangeOMenuAddtiveDescription("Volume Atual: " + string(music_volume * 100)+ "%")
    }
	
	SaveConfig()
}

function ToggleFullscream()
{
	// Verificar o estado atual da janela
	var is_fullscreen = window_get_fullscreen();

	window_set_fullscreen(!is_fullscreen);
	
	SaveConfig()
}

function SetSelectedIndex(index)
{
	var navegationManager = instance_find(MenuManager, 0)
	navegationManager.selectedIndex = index
}

function IncrementSelectedIndex()
{
	var navegationManager = instance_find(MenuManager, 0)
	
	navegationManager.selectedIndex = navegationManager.selectedIndex + 1;
	
	if(navegationManager.selectedIndex > navegationManager.indexCap)
	{
		navegationManager.selectedIndex = 0;
	}
}

function DecrementSelectedIndex()
{
	var navegationManager = instance_find(MenuManager, 0)
	
	navegationManager.selectedIndex = navegationManager.selectedIndex - 1;
	
	if(navegationManager.selectedIndex < 0)
	{
		navegationManager.selectedIndex = navegationManager.indexCap;
	}
}