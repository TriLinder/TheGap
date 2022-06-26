playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1000 1 1

xp add @s 1 levels

execute if entity @s[team=red] run function game:move_south
execute if entity @s[team=blue] run function game:move_north