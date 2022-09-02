#Move multiple times to the south
execute if score blocksToMoveTemp game matches 0 run scoreboard players operation blocksToMoveTemp game = blocksToMove game

function game:move_south
scoreboard players remove blocksToMoveTemp game 1

execute if score blocksToMoveTemp game matches 1.. run function game:move_multiple_south