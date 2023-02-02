#Find all blocks connected to the base

#Remove existing tags
tag @e[tag=connectedBlock] remove connectedBlock
tag @e[tag=notConnected] remove notConnected

#Add first tags
execute as @e[tag=completeCenter] at @s run tag @e[tag=block, distance=..3] add connectedBlock

#Start loop
function game:find_connected_loop

#Add notConnected tag
execute as @e[tag=block] if entity @s[tag=!connectedBlock] run tag @s add notConnected