tag @a add playing

gamemode spectator @a
tp @a 0 64 0

effect give @a minecraft:blindness 1000000 255 true
effect give @a minecraft:darkness 1000000 255 true

#Wait 3 seconds for chunks to load
title @a title "Loading.."
schedule function game:start_game_timer 3s