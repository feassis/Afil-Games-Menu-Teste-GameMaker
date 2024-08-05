/// @description Insert description here
// You can write your code in this editor
function ExecuteButtonFunction()
{
	var inst = instance_find(oMenu, 0)

	if(!inst){
		Menu(
		mouse_x,
		mouse_y,
		[
			["Nao",  -1],
			["Sim",  game_end]
			
		]
		, "Voce deseja sair do jogo?")
	}
}