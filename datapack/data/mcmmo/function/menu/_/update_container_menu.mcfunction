data modify storage mcmmo:temp Items set from block ~ ~ ~ Items

data modify storage mcmmo:temp CurrentItems set from block ~ ~ ~ Items

data modify storage mcmmo:temp PreviousItems set from entity @s data.PreviousItems

scoreboard players set #t0 mcmmo.menu 0
execute store result score #t0 mcmmo.menu run data modify entity @s data.PreviousItems set from storage mcmmo:temp CurrentItems

execute if score #t0 mcmmo.menu matches 1 run function mcmmo:menu/on_change