execute as @a[tag=!detected] unless score @s hasJoined matches 1 run function lobby:joined
execute as @a[scores={gamesLeft=1..}] run function lobby:joined