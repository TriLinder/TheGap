scoreboard players set $inProgress game 0

scoreboard players set @a goldBlocksMined 0

execute as @a[tag=winner] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 10000 2 1
execute as @a[tag=loser] at @s run playsound minecraft:block.anvil.place master @s ~ ~ ~ 10000 1 1

effect give @a[tag=winner] minecraft:glowing infinite 255 true

effect give @a minecraft:regeneration infinite 255 true
effect give @a minecraft:resistance infinite 255 true

kill @e[type=item]
clear @a

give @a[tag=winner] minecraft:firework_rocket[can_place_on={predicates:[{blocks:"minecraft:gold_block"},{blocks:"minecraft:blue_stained_glass"},{blocks:"minecraft:red_stained_glass"},{blocks:"minecraft:red_wool"},{blocks:"minecraft:blue_wool"},{blocks:"minecraft:red_concrete"},{blocks:"minecraft:blue_concrete"},{blocks:"minecraft:white_concrete"},{blocks:"minecraft:bedrock"}],show_in_tooltip:false},hide_additional_tooltip={},fireworks={flight_duration:1,explosions:[{shape:"large_ball",has_trail:true,colors:[I;4312372,14602026],fade_colors:[I;4312372,14602026,15435844,15790320]}]}] 2304
team leave @a

scoreboard players set $gameOverTime game 0