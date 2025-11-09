execute as @a[tag=!mcmmo.initialized] at @s run function mcmmo:player/init
execute as @e[scores={mcmmo.menu=0..}] at @s run function mcmmo:menu/update