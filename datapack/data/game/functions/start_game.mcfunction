#No longer in lobby
title @a actionbar ""
scoreboard players set $inLobby lobby 0
function lobby:disable_triggers

#Copy walls and blocksToMove settings from lobby
scoreboard players operation wallsDistance game = lobbyWallsDistance lobby
scoreboard players operation blocksToMove game = lobbyBlocksToMove lobby

tag @a add playing

gamemode spectator @a
tp @a 0 64 0

effect give @a minecraft:blindness infinite 255 true
effect give @a minecraft:darkness infinite 255 true

#World border to prevent players from bridging away
worldborder set 240

#Wait 3 seconds for chunks to load
title @a subtitle "for the chunks to load."
title @a title "Please wait.."
schedule function game:start_game_timer 3s

scoreboard players set $starting game 1