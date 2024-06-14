#Kill marker entity if block no longer present
execute as @e[tag=block] at @s if block ~ ~ ~ air run kill @s

#Flip all touching entities
execute as @e[type=!marker, tag=!raycast] at @s run function game:standing_check
execute as @e[type=!marker, tag=!raycast] at @s if score @s standing matches 1 run function game:flip_entity

#Remove original blocks
execute as @e[tag=block] at @s run setblock ~ ~ ~ minecraft:air

#Flip block entities
execute as @e[tag=block] at @s run function game:flip_entity

#Build flipped blocks
execute as @e[tag=block] at @s run function game:build_block

#Notify players (arrow emojis)
execute as @a at @s run playsound minecraft:item.trident.riptide_2 master @s ~ ~ ~ 10000 1 1
title @a actionbar {"text":"\u21AA Blocks flipped! \u21A9", "color":"gold"}