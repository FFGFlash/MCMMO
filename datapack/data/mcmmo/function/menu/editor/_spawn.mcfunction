# Set the owner of our marker to @p
scoreboard players reset #temp mcmmo.core
execute store result score #temp mcmmo.core run function mcmmo:utility/set_owner

# If we failed to set the owner then return
execute unless score #temp mcmmo.core matches 1.. run return fail

# Get the player's facing direction for placing the barrel (1 = North, 2 = East, 3 = South, 4 = West, 5 = Up, 6 = Down)
scoreboard players reset #temp mcmmo.core
execute store result score #temp mcmmo.core run function mcmmo:utility/get_facing

# If we failed to get the facing then return (We shouldn't get up or down and 0 is a failure)
execute unless score #temp mcmmo.core matches 1..4 run return fail

# Set a barrel facing our player
execute if score #temp mcmmo.core matches 1 at @s run setblock ~ ~ ~ minecraft:barrel[facing=north]
execute if score #temp mcmmo.core matches 2 at @s run setblock ~ ~ ~ minecraft:barrel[facing=east]
execute if score #temp mcmmo.core matches 3 at @s run setblock ~ ~ ~ minecraft:barrel[facing=south]
execute if score #temp mcmmo.core matches 4 at @s run setblock ~ ~ ~ minecraft:barrel[facing=west]

# The default id for the menu_list menu is 0
scoreboard players set @s mcmmo.menu 0
# Set the menu list page to 0
scoreboard players set @s mcmmo.menu_list 0
# Set the editing menu to -1
scoreboard players set @s mcmmo.menu_editor -1

# Draw the menu
execute at @s run function mcmmo:menu/load_menu

# Remove the initialize tag to indicate it's been successfully spawned
tag @s remove mcmmo.init
return 1