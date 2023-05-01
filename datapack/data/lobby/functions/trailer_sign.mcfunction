#Set sign text
execute as @e[tag=trailerSignMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger trailerSign"},"text":""}','{"color":"aqua","text":"Watch the"}','{"color":"aqua","text":"trailer"}','{"text":""}']},is_waxed:0b}

#Triggers
execute as @a[scores={trailerSign=1..}] run tellraw @s ["",{"text":"You can watch the trailer on YouTube by clicking ","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=opldnz5Xdrk"}},{"text":"here","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=opldnz5Xdrk"}},{"text":".","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=opldnz5Xdrk"}}]

scoreboard players set @a trailerSign 0
scoreboard players enable @a trailerSign