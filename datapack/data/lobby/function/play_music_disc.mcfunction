#Play music disc from 'lobby discToPlay'

#   00 = 13
#   01 = Cat
#   02 = Blocks
#   03 = Chirp
#   04 = Far
#   05 = Mall
#   06 = Mellohi
#   07 = Stal
#   08 = Strad
#   09 = Ward
#   10 = 11
#   11 = Wait
#   12 = Otherside
#   13 = 5
#   14 = Pigstep
#   15 = Relic
#   99 = Stop playing current music disc

#Teleport away all selecting players
tp @a[tag=musicDiscSelection] 2048.0 80 0 0 0

#Stop Minecraft music
stopsound @a music

#Stop all playing music discs
stopsound @a * minecraft:music_disc.13
stopsound @a * minecraft:music_disc.cat
stopsound @a * minecraft:music_disc.blocks
stopsound @a * minecraft:music_disc.chirp
stopsound @a * minecraft:music_disc.far
stopsound @a * minecraft:music_disc.mall
stopsound @a * minecraft:music_disc.mellohi
stopsound @a * minecraft:music_disc.stal
stopsound @a * minecraft:music_disc.strad
stopsound @a * minecraft:music_disc.ward
stopsound @a * minecraft:music_disc.11
stopsound @a * minecraft:music_disc.wait
stopsound @a * minecraft:music_disc.otherside
stopsound @a * minecraft:music_disc.5
stopsound @a * minecraft:music_disc.pigstep
stopsound @a * minecraft:music_disc.relic

#Play music disc
execute if score discToPlay lobby matches 0 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.13 record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 1 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.cat record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 2 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.blocks record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 3 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.chirp record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 4 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.far record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 5 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.mall record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 6 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.mellohi record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 7 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.stal record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 8 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.strad record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 9 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.ward record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 10 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.11 record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 11 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.wait record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 12 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.otherside record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 13 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.5 record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 14 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.pigstep record @a 2048.0 80 -4 1000 1 1
execute if score discToPlay lobby matches 15 as @e[tag=musicDiscSoundOrigin] at @s run playsound minecraft:music_disc.relic record @a 2048.0 80 -4 1000 1 1

#Reset discToPlay to prevent looping
scoreboard players set discToPlay lobby -1