#Set sign text
execute as @e[tag=tutorialSignMarker] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"clickEvent":{"action":"run_command","value":"trigger startTutorial"},"text":""}','{"color":"aqua","text":"Click for a"}','{"color":"aqua","text":"map showcase"}','{"text":""}']},is_waxed:0b}

#Triggers
scoreboard players enable @a startTutorial
execute if entity @a[scores={startTutorial=1..}] run function tutorial:start
scoreboard players set @a startTutorial 0