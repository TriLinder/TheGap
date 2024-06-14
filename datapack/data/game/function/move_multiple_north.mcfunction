#Move multiple times to the north
execute if score blocksToMoveTemp game matches 0 run scoreboard players operation blocksToMoveTemp game = blocksToMove game

function game:move_north
scoreboard players remove blocksToMoveTemp game 1

execute if score blocksToMoveTemp game matches 1.. run function game:move_multiple_north