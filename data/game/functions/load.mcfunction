tellraw @a "Loaded!"

gamerule keepInventory true

scoreboard objectives add block dummy
scoreboard objectives add game dummy

scoreboard objectives add placedRedWool minecraft.used:minecraft.red_wool
scoreboard objectives add placedBlueWool minecraft.used:minecraft.blue_wool

scoreboard objectives add goldBlocksMined minecraft.mined:minecraft.gold_block

scoreboard objectives add standing dummy

scoreboard objectives add rayCast dummy

team add red "Red"
team add blue "Blue"

team modify red color red
team modify blue color blue

team modify red deathMessageVisibility never
team modify blue deathMessageVisibility never

team modify red friendlyFire false
team modify blue friendlyFire false

scoreboard objectives add kills playerKillCount

scoreboard objectives add playerY dummy
scoreboard objectives add blockZ dummy

scoreboard objectives add tutorial dummy

scoreboard objectives add blocksFromBorder dummy
scoreboard objectives add blockPositiveNegative dummy

scoreboard objectives add flipBlocks dummy

scoreboard objectives add hasJoined dummy
scoreboard objectives add gamesLeft minecraft.custom:minecraft.leave_game