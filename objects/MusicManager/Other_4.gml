/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 30DA2A99
/// @DnDArgument : "soundid" "BgMusic"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "BgMusic"
var l30DA2A99_0 = BgMusic;
if (!audio_is_playing(l30DA2A99_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0028FD6D
	/// @DnDParent : 30DA2A99
	/// @DnDArgument : "soundid" "BgMusic"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "BgMusic"
	audio_play_sound(BgMusic, 0, 1, 1.0, undefined, 1.0);
}