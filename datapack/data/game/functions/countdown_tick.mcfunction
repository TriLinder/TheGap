scoreboard players remove $countdown game 1

title @a times 0 25 0

function game:countdown_tick_xp

#Place light block to fix lighting issues
execute if score $countdown game matches 80 run setblock 0 68 0 minecraft:light
execute if score $countdown game matches 60 run setblock 0 68 0 minecraft:barrier

#3
execute if score $countdown game matches 60 run title @a title {"text":"3","bold":true,"color":""}
execute if score $countdown game matches 60 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100000 .1 1

#2
execute if score $countdown game matches 40 run title @a title {"text":"2","bold":true,"color":""}
execute if score $countdown game matches 40 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100000 .1 1

#1
execute if score $countdown game matches 20 run title @a title {"text":"1","bold":true,"color":""}
execute if score $countdown game matches 20 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100000 .1 1

#GO
execute if score $countdown game matches 1 run title @a title {"text":"GO!","bold":true,"color":""}
execute if score $countdown game matches 1 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100000 2 1

execute if score $countdown game matches 1 run function game:countdown_over