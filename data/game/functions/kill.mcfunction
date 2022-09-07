#Sound
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1000 1 1

#Killstreaks
xp add @s 1 levels
scoreboard players add @s killStreak 1

execute if score @s killStreak matches 3 run function game:give_tnt_item
execute if score @s killStreak matches 3 run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" received the "},{"text":"TNT","color":"aqua"},{"text":" item for a killstreak of "},{"score":{"name":"@s","objective":"killStreak"},"color":"aqua"}]

execute if score @s killStreak matches 5 run function game:give_knockback_item
execute if score @s killStreak matches 5 run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" received the "},{"text":"Knockback stick","color":"aqua"},{"text":" for a killstreak of "},{"score":{"name":"@s","objective":"killStreak"},"color":"aqua"}]

execute if score @s killStreak matches 6..7 store result score @s hasKillStreakItem run clear @s minecraft:ender_eye 0
execute if score @s killStreak matches 7 if score @s hasKillStreakItem matches 1.. run tellraw @s ["",{"text":"You have to use the "},{"text":"Flip!","color":"aqua"},{"text":" Item before receiving it again"}]
execute if score @s killStreak matches 7 if score @s hasKillStreakItem matches 0 run function game:give_flip_item
execute if score @s killStreak matches 7 if score @s hasKillStreakItem matches 0 run tellraw @a ["",{"selector":"@s","color":"aqua"},{"text":" received the "},{"text":"Flip!","color":"aqua"},{"text":" Item for a killstreak of "},{"score":{"name":"@s","objective":"killStreak"},"color":"aqua"}]

#Move structure set amount of times
execute if entity @s[team=red] run function game:move_multiple_south
execute if entity @s[team=blue] run function game:move_multiple_north