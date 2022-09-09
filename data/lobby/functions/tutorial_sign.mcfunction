#Set sign text
execute as @e[tag=tutorialSignMarker] at @s run data merge block ~ ~ ~ {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger startTutorial"}}',Text2:'{"text":"Click to start","color":"aqua"}',Text3:'{"text":"map showcase","color":"aqua"}'}

#Triggers
scoreboard players enable @a startTutorial
execute if entity @a[scores={startTutorial=1..}] run function tutorial:start
scoreboard players set @a startTutorial 0