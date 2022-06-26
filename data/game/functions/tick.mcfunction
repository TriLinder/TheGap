execute if score $inProgress game matches 1 run function game:game_tick

execute if score $gameOverTime game matches 0.. run scoreboard players add $gameOverTime game 1
execute if score $gameOverTime game matches 100.. run function game:return_to_lobby