# Fetch the menu
data modify storage mcmmo:menus Args.target set value "mcmmo:menus"
execute store result storage mcmmo:menus Args.index int 1 run scoreboard players get @s mcmmo.menu_editor
scoreboard players set #t0 mcmmo.menu_editor 0
execute store success score #t0 mcmmo.menu_editor run function mcmmo:lists/fetch with storage mcmmo:menus Args
execute unless score #t0 mcmmo.menu_editor matches 1 run return fail

# Load the menu into the block
execute if entity @s[type=minecraft:player] positioned 0 -64 0 in minecraft:overworld run function mcmmo:menu/editor/_/load_player_menu
execute unless entity @s[type=minecraft:player] run function mcmmo:menu/editor/_/load_container_menu