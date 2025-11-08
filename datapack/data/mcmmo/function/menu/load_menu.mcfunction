scoreboard players set #t0 mcmmo.menu 0
execute store success score #t0 mcmmo.menu run function mcmmo:menu/fetch_menu

execute unless score #t0 mcmmo.menu matches 1 run return fail

execute if entity @s[type=minecraft:player] positioned 0 -64 0 in minecraft:overworld run function mcmmo:menu/_/load_player_menu
execute unless entity @s[type=minecraft:player] run function mcmmo:menu/_/load_container_menu