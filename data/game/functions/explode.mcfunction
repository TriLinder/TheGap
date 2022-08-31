# -- Replace all stained glass in radius of 4, simulate an explosion

#Summon markers
kill @e[tag=explosionRadius]

function game:radius_4
tag @e[tag=radius4, distance=..5] add explosionRadius

#Replace stained glass
execute as @e[tag=explosionRadius] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:red_stained_glass
execute as @e[tag=explosionRadius] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:blue_stained_glass

#Sound, particles
#playsound minecraft:entity.generic.explode block @a ~ ~ ~ 2 .8
particle minecraft:explosion_emitter ~ ~ ~

#Summon creeper
summon minecraft:creeper ~ ~ ~ {Fuse:0b, NoAI:1b, Silent:1b, Invisible:1b}

#Kill markers
kill @e[tag=explosionRadius]