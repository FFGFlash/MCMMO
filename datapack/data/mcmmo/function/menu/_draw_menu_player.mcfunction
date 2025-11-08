data modify block ~ ~ ~ Items set value []
execute store result score #temp mcmmo.menu run function mcmmo:menu/_draw_menu with storage mcmmo:menu Temp
loot replace entity @s enderchest.0 mine ~ ~ ~ stick[custom_data={drop_contents:1b}]