# Option 0 always means close dialog
execute if score @s mcmmo.option matches 0 run return run dialog clear @s
execute if score @s mcmmo.npc matches 1 run function mcmmo:npc/henry/on_choice