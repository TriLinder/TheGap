tellraw @a "Loaded!"

scoreboard objectives add block dummy
scoreboard objectives add game dummy

scoreboard objectives add placedRedWool minecraft.used:minecraft.red_wool
scoreboard objectives add placedBlueWool minecraft.used:minecraft.blue_wool

scoreboard objectives add standing dummy

scoreboard objectives add rayCast dummy

team add red "Red"
team add blue "Blue"

team modify red color red
team modify blue color blue

team modify red deathMessageVisibility never
team modify blue deathMessageVisibility never

scoreboard objectives add kills playerKillCount

scoreboard objectives add playerY dummy