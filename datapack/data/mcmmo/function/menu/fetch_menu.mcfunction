data modify storage mcmmo:menus Args.target set value "mcmmo:menus"
execute store result storage mcmmo:menus Args.index int 1 run scoreboard players get @s mcmmo.menu
return run function mcmmo:lists/fetch with storage mcmmo:menus Args