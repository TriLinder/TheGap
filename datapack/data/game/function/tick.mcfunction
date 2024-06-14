function lobby:join_detector

execute if score $inProgress game matches 1 run function game:game_tick
execute if score $inLobby lobby matches 1 run function lobby:tick
execute if score $timer tutorial matches 0.. run function tutorial:tick

execute if score $gameOverTime game matches 0.. run scoreboard players add $gameOverTime game 1
execute if score $gameOverTime game matches 150.. run function game:return_to_lobby

execute if score $countdown game matches 1.. run function game:countdown_tick