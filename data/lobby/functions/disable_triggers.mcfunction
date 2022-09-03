#Disable triggers
execute as @a run trigger startSignClick set 0
execute as @a run trigger startTutorial set 0
execute as @a run trigger lobbyWallsPlus set 0
execute as @a run trigger lobbyWallsMinus set 0
execute as @a run trigger lobbyWalls42 set 0
execute as @a run trigger lobbyBlocksPlus set 0
execute as @a run trigger lobbyBlocksMinus set 0

#Stop music discs
scoreboard players set discToPlay lobby 99
function lobby:play_music_disc