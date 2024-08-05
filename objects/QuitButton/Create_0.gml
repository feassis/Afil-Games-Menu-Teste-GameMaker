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
			["Sim",  game_end],
			["Nao",  -1]
		]
		, "Você deseja sair do jogo?")
	}
}