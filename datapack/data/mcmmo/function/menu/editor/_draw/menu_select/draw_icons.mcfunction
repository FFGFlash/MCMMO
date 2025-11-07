# Calculate the menu id from the page and the menu offset (21 * page + i)
scoreboard players operation #menu_index mcmmo.menu_editor = @s mcmmo.menu
scoreboard players operation #menu_index mcmmo.menu_editor *= 21 mcmmo.core
scoreboard players operation #menu_index mcmmo.menu_editor += #i mcmmo.core

# Calculate the inventory slot (⌊i / 7⌋ * 9 + 1 + i % 7)
scoreboard players operation #slot_row mcmmo.menu_editor = #i mcmmo.core
scoreboard players operation #slot_row mcmmo.menu_editor /= 7 mcmmo.core
scoreboard players operation #slot_col mcmmo.menu_editor = #i mcmmo.core
scoreboard players operation #slot_col mcmmo.menu_editor %= 7 mcmmo.core
scoreboard players operation #slot mcmmo.menu_editor = #slot_row mcmmo.menu_editor
scoreboard players operation #slot mcmmo.menu_editor *= 9 mcmmo.core
scoreboard players add #slot mcmmo.menu_editor 1
scoreboard players operation #slot mcmmo.menu_editor += #slot_col mcmmo.menu_editor

execute store result storage mcmmo:menu_editor Temp.Slot byte 1 run scoreboard players get #slot mcmmo.menu_editor
execute store result storage mcmmo:menu_editor Temp.Index int 1 run scoreboard players get #menu_index mcmmo.menu_editor

# Draw the icon using a macro
scoreboard players reset #temp mcmmo.core
execute store result score #temp mcmmo.core run function mcmmo:menu/editor/_draw/menu_select/draw_icon with storage mcmmo:menu_editor Temp

# Exit early if we've drawn all the menus
execute unless score #temp mcmmo.core matches 1.. run return 1

# Decrement by 1, check >= 0 ? continue loop : return
scoreboard players add #i mcmmo.core 1
execute if score #i mcmmo.core matches ..20 run return run function mcmmo:menu/editor/_draw/menu_select/_draw_icons
return 1