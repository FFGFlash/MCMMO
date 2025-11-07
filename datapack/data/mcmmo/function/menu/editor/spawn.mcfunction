# Spawn a marker to track our menu editor (Only if it's an air block)
execute anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ #minecraft:air run summon minecraft:marker ~ ~ ~ {Tags:["mcmmo.init","mcmmo.menu_editor"]}

tag @s add mcmmo.owner

# Run the initialization script for our menu editor and store the result
scoreboard players reset #result mcmmo.core
execute store result score #result mcmmo.core as @e[tag=mcmmo.init,limit=1] facing entity @p eyes rotated ~ 0 run function mcmmo:menu/editor/_spawn

tag @s remove mcmmo.owner

# Handle if we fail to summon our menu editor
execute if score #result mcmmo.core matches 1.. run return 1
tellraw @s {"text":"Failed to spawn menu editor.","color":"dark_red"}
kill @e[tag=mcmmo.init,limit=1]