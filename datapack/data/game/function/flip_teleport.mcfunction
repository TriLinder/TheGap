#Positive
execute if score @s flipBlocks matches 100.. at @s run tp @s ~ ~ ~100
execute if score @s flipBlocks matches 100.. at @s run scoreboard players remove @s flipBlocks 100
execute if score @s flipBlocks matches 50.. at @s run tp @s ~ ~ ~50
execute if score @s flipBlocks matches 50.. at @s run scoreboard players remove @s flipBlocks 50
execute if score @s flipBlocks matches 25.. at @s run tp @s ~ ~ ~25
execute if score @s flipBlocks matches 25.. at @s run scoreboard players remove @s flipBlocks 25
execute if score @s flipBlocks matches 10.. at @s run tp @s ~ ~ ~10
execute if score @s flipBlocks matches 10.. at @s run scoreboard players remove @s flipBlocks 10
execute if score @s flipBlocks matches 5.. at @s run tp @s ~ ~ ~5
execute if score @s flipBlocks matches 5.. at @s run scoreboard players remove @s flipBlocks 5
execute if score @s flipBlocks matches 2.. at @s run tp @s ~ ~ ~2
execute if score @s flipBlocks matches 2.. at @s run scoreboard players remove @s flipBlocks 2
execute if score @s flipBlocks matches 1.. at @s run tp @s ~ ~ ~1
execute if score @s flipBlocks matches 1.. at @s run scoreboard players remove @s flipBlocks 1

#Negative
execute if score @s flipBlocks matches ..-100 at @s run tp @s ~ ~ ~-100
execute if score @s flipBlocks matches ..-100 at @s run scoreboard players add @s flipBlocks 100
execute if score @s flipBlocks matches ..-50 at @s run tp @s ~ ~ ~-50
execute if score @s flipBlocks matches ..-50 at @s run scoreboard players add @s flipBlocks 50
execute if score @s flipBlocks matches ..-25 at @s run tp @s ~ ~ ~-25
execute if score @s flipBlocks matches ..-25 at @s run scoreboard players add @s flipBlocks 25
execute if score @s flipBlocks matches ..-10 at @s run tp @s ~ ~ ~-10
execute if score @s flipBlocks matches ..-10 at @s run scoreboard players add @s flipBlocks 10
execute if score @s flipBlocks matches ..-5 at @s run tp @s ~ ~ ~-5
execute if score @s flipBlocks matches ..-5 at @s run scoreboard players add @s flipBlocks 5
execute if score @s flipBlocks matches ..-2 at @s run tp @s ~ ~ ~-2
execute if score @s flipBlocks matches ..-2 at @s run scoreboard players add @s flipBlocks 2
execute if score @s flipBlocks matches ..-1 at @s run tp @s ~ ~ ~-1
execute if score @s flipBlocks matches ..-1 at @s run scoreboard players add @s flipBlocks 1

#setblock ~ ~ ~ minecraft:yellow_concrete

#Loop
execute unless score @s flipBlocks matches 0 run function game:flip_teleport