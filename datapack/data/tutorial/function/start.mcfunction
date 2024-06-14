effect give @a minecraft:slowness infinite 255 true
effect give @a minecraft:blindness infinite 255 true
effect give @a minecraft:darkness infinite 255 true
gamemode spectator @a

#No longer in lobby
title @a actionbar ""
scoreboard players set $inLobby lobby 0
function lobby:disable_triggers

tp @a 0 154 0

scoreboard players set wallsDistance game 42

scoreboard players set $timer tutorial -2
schedule function tutorial:start_timer 3s


scoreboard players set 20 tutorial 20
scoreboard players set 10 tutorial 10