#Find connected
function game:find_connected

#Destroy not connected
execute as @e[tag=notConnected] at @s run particle minecraft:explosion
execute as @e[tag=notConnected] at @s run function game:destroy_block