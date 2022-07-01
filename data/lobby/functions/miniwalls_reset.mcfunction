kill @e[tag=miniwalls]

scoreboard players set lobbyWallsDistance lobby 15

#Center
execute at @e[tag=miniWallsCenterMarker, limit=1] run summon minecraft:armor_stand ~-0.2187 ~ ~ {Small:1b, ShowArms:1b, Pose:{RightArm:[0f,0f,0f]}, Invisible:1b, Tags:["miniwallsCenterRed", "miniwalls"], Marker:1b, DisabledSlots:1b}
item replace entity @e[tag=miniwallsCenterRed] armor.head with minecraft:red_concrete

execute at @e[tag=miniWallsCenterMarker, limit=1] run summon minecraft:armor_stand ~0.2187 ~ ~ {Small:1b, ShowArms:1b, Pose:{RightArm:[0f,0f,0f]}, Invisible:1b, Tags:["miniwallsCenterBlue", "miniwalls"], Marker:1b, DisabledSlots:1b}
item replace entity @e[tag=miniwallsCenterBlue] armor.head with minecraft:blue_concrete

#Walls
execute at @e[tag=miniWallsCenterMarker, limit=1] run summon minecraft:armor_stand ~-1 ~ ~ {Small:1b, ShowArms:1b, Pose:{RightArm:[0f,0f,0f]}, Invisible:1b, Tags:["miniwallsRedWall", "miniwalls"], Marker:1b, DisabledSlots:1b}
item replace entity @e[tag=miniwallsRedWall] armor.head with minecraft:red_stained_glass

execute at @e[tag=miniWallsCenterMarker, limit=1] run summon minecraft:armor_stand ~1 ~ ~ {Small:1b, ShowArms:1b, Pose:{RightArm:[0f,0f,0f]}, Invisible:1b, Tags:["miniwallsBlueWall", "miniwalls"], Marker:1b, DisabledSlots:1b}
item replace entity @e[tag=miniwallsBlueWall] armor.head with minecraft:blue_stained_glass