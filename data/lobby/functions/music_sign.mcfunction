#Teleport sign
execute as @e[tag=musicSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger chooseMusicDisc"}}',Text2:'{"text":"Click to","color":"aqua"}',Text3:'{"text":"play music","color":"aqua"}'}

#Teleport sign triggers
execute as @a[scores={chooseMusicDisc=1..}] run tp @s 2056.0 81 -12.0 180 0

scoreboard players set @a chooseMusicDisc 0
scoreboard players enable @a chooseMusicDisc

#Music disc signs
execute as @e[tag=musicDiscMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"Play!","bold":false,"color":"aqua"}'}

#Set player tags
execute as @a[tag=!musicDiscSelection] at @s if block ~ 64 ~ minecraft:yellow_wool run tag @s add musicDiscSelection
execute as @a[tag=musicDiscSelection] at @s unless block ~ 64 ~ minecraft:yellow_wool run tag @s remove musicDiscSelection

#Music disc triggers
execute if entity @a[tag=musicDiscSelection] run scoreboard players set discToPlay lobby -1

execute if entity @a[scores={musicDisc13=1..}] run scoreboard players set discToPlay lobby 0
execute if entity @a[scores={musicDiscCat=1..}] run scoreboard players set discToPlay lobby 1
execute if entity @a[scores={musicDiscBlocks=1..}] run scoreboard players set discToPlay lobby 2
execute if entity @a[scores={musicDiscChirp=1..}] run scoreboard players set discToPlay lobby 3
execute if entity @a[scores={musicDiscFar=1..}] run scoreboard players set discToPlay lobby 4
execute if entity @a[scores={musicDiscMall=1..}] run scoreboard players set discToPlay lobby 5
execute if entity @a[scores={musicDiscMellohi=1..}] run scoreboard players set discToPlay lobby 6
execute if entity @a[scores={musicDiscStal=1..}] run scoreboard players set discToPlay lobby 7
execute if entity @a[scores={musicDiscStrad=1..}] run scoreboard players set discToPlay lobby 8
execute if entity @a[scores={musicDiscWard=1..}] run scoreboard players set discToPlay lobby 9
execute if entity @a[scores={musicDisc11=1..}] run scoreboard players set discToPlay lobby 10
execute if entity @a[scores={musicDiscWait=1..}] run scoreboard players set discToPlay lobby 11
execute if entity @a[scores={musicDiscOtherside=1..}] run scoreboard players set discToPlay lobby 12
execute if entity @a[scores={musicDisc5=1..}] run scoreboard players set discToPlay lobby 13
execute if entity @a[scores={musicDiscPigstep=1..}] run scoreboard players set discToPlay lobby 14
execute if entity @a[scores={musicDiscNone=1..}] run scoreboard players set discToPlay lobby 99
tp @a[scores={musicDiscExit=1..}] 2048.0 80 0 0 0

scoreboard players set @a musicDisc13 0
scoreboard players set @a musicDiscCat 0
scoreboard players set @a musicDiscBlocks 0
scoreboard players set @a musicDiscChirp 0
scoreboard players set @a musicDiscFar 0
scoreboard players set @a musicDiscMall 0
scoreboard players set @a musicDiscMellohi 0
scoreboard players set @a musicDiscStal 0
scoreboard players set @a musicDiscStrad 0
scoreboard players set @a musicDiscWard 0
scoreboard players set @a musicDisc11 0
scoreboard players set @a musicDiscWait 0
scoreboard players set @a musicDiscOtherside 0
scoreboard players set @a musicDisc5 0
scoreboard players set @a musicDiscPigstep 0
scoreboard players set @a musicDiscNone 0
scoreboard players set @a musicDiscExit 0

#Play music disc if choosen
execute if score discToPlay lobby matches 0.. run function lobby:play_music_disc

#Enable / disable music disc triggers
scoreboard players enable @a[tag=musicDiscSelection] musicDisc13
scoreboard players enable @a[tag=musicDiscSelection] musicDiscCat
scoreboard players enable @a[tag=musicDiscSelection] musicDiscBlocks
scoreboard players enable @a[tag=musicDiscSelection] musicDiscChirp
scoreboard players enable @a[tag=musicDiscSelection] musicDiscFar
scoreboard players enable @a[tag=musicDiscSelection] musicDiscMall
scoreboard players enable @a[tag=musicDiscSelection] musicDiscMellohi
scoreboard players enable @a[tag=musicDiscSelection] musicDiscStal
scoreboard players enable @a[tag=musicDiscSelection] musicDiscStrad
scoreboard players enable @a[tag=musicDiscSelection] musicDiscWard
scoreboard players enable @a[tag=musicDiscSelection] musicDisc11
scoreboard players enable @a[tag=musicDiscSelection] musicDiscWait
scoreboard players enable @a[tag=musicDiscSelection] musicDiscOtherside
scoreboard players enable @a[tag=musicDiscSelection] musicDisc5
scoreboard players enable @a[tag=musicDiscSelection] musicDiscPigstep
scoreboard players enable @a[tag=musicDiscSelection] musicDiscNone
scoreboard players enable @a[tag=musicDiscSelection] musicDiscExit

execute as @a[tag=!musicDiscSelection] run trigger musicDisc13 set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscCat set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscBlocks set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscChirp set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscFar set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscMall set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscMellohi set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscStal set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscStrad set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscWard set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDisc11 set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscWait set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscOtherside set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDisc5 set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscPigstep set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscNone set 0
execute as @a[tag=!musicDiscSelection] run trigger musicDiscExit set 0