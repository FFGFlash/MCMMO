setblock ~ ~ ~ minecraft:shulker_box
execute store result score #temp mcmmo.menu run function mcmmo:menu/_draw_menu with storage mcmmo:menu Temp

# TODO: Load shulker into ender chest

setblock ~ ~ ~ minecraft:air