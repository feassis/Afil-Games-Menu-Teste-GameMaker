// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Menu(_x, _y, _options, _description = -1)
{
	with(instance_create_depth(_x, _y, -999, oMenu)){
		options = _options
		description = _description
		optionsCount = array_length(_options)
		hoverMarker = "* ";
		
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
		
		widthFull = width + margin * 2;
		heightFull = height + margin * 2;
	}
}


function VolumeUp() 
{
	var music_volume = audio_sound_get_gain(BgMusic)
	if (music_volume < 1.0) {
		
        music_volume += 0.1;
        audio_sound_gain(BgMusic, music_volume, 0);
    }
}

function VolumeDown()
{
	var music_volume = audio_sound_get_gain(BgMusic)
	if (music_volume > 0.0) {
        music_volume -= 0.1;
        audio_sound_gain(BgMusic, music_volume, 0);
    }
}

function ToggleFullscream()
{
	// Verificar o estado atual da janela
	var is_fullscreen = window_get_fullscreen();

	window_set_fullscreen(!is_fullscreen);
}

function SetSelectedIndex(index)
{
	var navegationManager = instance_find(MenuNavegationManager, 0)
	navegationManager.selectedIndex = index
}

function IncrementSelectedIndex()
{
	var navegationManager = instance_find(MenuNavegationManager, 0)
	
	navegationManager.selectedIndex = navegationManager.selectedIndex + 1;
	
	if(navegationManager.selectedIndex > navegationManager.indexCap)
	{
		navegationManager.selectedIndex = 0;
	}
}

function DecrementSelectedIndex()
{
	var navegationManager = instance_find(MenuNavegationManager, 0)
	
	navegationManager.selectedIndex = navegationManager.selectedIndex - 1;
	
	if(navegationManager.selectedIndex < 0)
	{
		navegationManager.selectedIndex = navegationManager.indexCap;
	}
}