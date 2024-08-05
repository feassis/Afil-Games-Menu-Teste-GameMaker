/// @description Insert description here
// You can write your code in this editor
function ExecuteButtonFunction()
{
	var inst = instance_find(oMenu, 0)

	if(!inst){
		Menu(
		display_get_width()/4,
		display_get_height()/4,
		[
			["Nao",  -1],
			["Sim",  game_end]
			
		]
		, "Voce deseja sair do jogo?")
	}
}