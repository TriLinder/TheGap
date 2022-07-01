scoreboard players set $inProgress game 0

scoreboard players set @a goldBlocksMined 0

execute as @a[tag=winner] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10000 2 1
execute as @a[tag=loser] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 10000 1 1

effect give @a[tag=winner] minecraft:glowing 1000000 255 true

effect give @a minecraft:regeneration 100000 255 true
effect give @a minecraft:resistance 100000 255 true

kill @e[type=item]
clear @a

give @a[tag=winner] minecraft:firework_rocket{HideFlags:127, Fireworks:{Explosions:[{Type:1,Trail:1,Colors:[I;4312372,14602026],FadeColors:[I;4312372,14602026,15435844,15790320]}],Flight:1}, CanPlaceOn:["minecraft:gold_block", "minecraft:blue_stained_glass", "minecraft:red_stained_glass", "minecraft:red_wool", "minecraft:blue_wool", "minecraft:red_concrete", "minecraft:blue_concrete", "minecraft:white_concrete", "minecraft:bedrock"]} 2304
team leave @a

scoreboard players set $gameOverTime game 0