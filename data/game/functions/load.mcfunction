tellraw @a "Loaded!"

gamerule keepInventory true
gamerule spawnRadius 0

worldborder center 0 0
worldborder warning distance 0
worldborder warning time 0
worldborder damage amount 0
worldborder damage buffer 99999

execute if score $inLobby lobby matches 1 run worldborder set 10000

scoreboard objectives add block dummy
scoreboard objectives add game dummy

scoreboard objectives add placedRedWool minecraft.used:minecraft.red_wool
scoreboard objectives add placedBlueWool minecraft.used:minecraft.blue_wool

scoreboard objectives add placedTNT minecraft.used:minecraft.tnt

scoreboard objectives add hasRedWool dummy
scoreboard objectives add hasBlueWool dummy

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
scoreboard objectives add deaths deathCount

scoreboard objectives add killStreak dummy
scoreboard objectives add hasKillStreakItem dummy

scoreboard objectives add playerY dummy
scoreboard objectives add playerZ dummy
scoreboard objectives add blockZ dummy

scoreboard objectives add tutorial dummy

scoreboard objectives add blocksFromBorder dummy
scoreboard objectives add blockPositiveNegative dummy

scoreboard objectives add flipBlocks dummy

scoreboard objectives add hasJoined dummy
scoreboard objectives add gamesLeft minecraft.custom:minecraft.leave_game

scoreboard objectives add lobby dummy

scoreboard objectives add startSignClick trigger
scoreboard objectives add startTutorial trigger
scoreboard objectives add lobbyWallsPlus trigger
scoreboard objectives add lobbyWallsMinus trigger
scoreboard objectives add lobbyWalls42 trigger
scoreboard objectives add lobbyBlocksPlus trigger
scoreboard objectives add lobbyBlocksMinus trigger

scoreboard objectives add chooseMusicDisc trigger
scoreboard objectives add musicDisc13 trigger
scoreboard objectives add musicDiscCat trigger
scoreboard objectives add musicDiscBlocks trigger
scoreboard objectives add musicDiscChirp trigger
scoreboard objectives add musicDiscFar trigger
scoreboard objectives add musicDiscMall trigger
scoreboard objectives add musicDiscMellohi trigger
scoreboard objectives add musicDiscStal trigger
scoreboard objectives add musicDiscStrad trigger
scoreboard objectives add musicDiscWard trigger
scoreboard objectives add musicDisc11 trigger
scoreboard objectives add musicDiscWait trigger
scoreboard objectives add musicDiscOtherside trigger
scoreboard objectives add musicDisc5 trigger
scoreboard objectives add musicDiscPigstep trigger
scoreboard objectives add musicDiscNone trigger
scoreboard objectives add musicDiscExit trigger