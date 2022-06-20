#Move all block to south ( +1z )

#Teleport all touching entities
execute as @e[type=!marker] at @s if entity @s[nbt={OnGround:1b}] if entity @e[tag=block, distance=..1.1] run tp @s ~ ~ ~1

#Move blocks
execute as @e[tag=block] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air
execute as @e[tag=block] at @s run tp @s ~ ~ ~1

execute as @e[tag=block] at @s run function game:build_block