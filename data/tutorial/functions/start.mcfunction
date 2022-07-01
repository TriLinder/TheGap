effect give @a minecraft:slowness 1000000 255 true
effect give @a minecraft:blindness 1000000 255 true
effect give @a minecraft:darkness 1000000 255 true
gamemode spectator @a

#No longer in lobby
title @a actionbar ""
scoreboard players set $inLobby lobby 0
function lobby:disable_triggers

summon minecraft:marker 0 64 0 {Marker:1b, Tags:["tutorialCamera"]}
tp @e[tag=tutorialCamera] 47 69 63 141.6 10.6
tp @a 0 154 0

scoreboard players set wallsDistance game 42

execute as @e[tag=block] at @s run function game:destroy_block

function game:build_base
function game:build_walls

kill @e[tag=wall]

#scoreboard players set $timer tutorial 0
schedule function tutorial:start_timer 3s


scoreboard players set 20 tutorial 20
scoreboard players set 10 tutorial 10