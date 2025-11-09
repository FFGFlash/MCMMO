data modify storage mcmmo:temp CurrentItems set from entity @s EnderItems
data modify block ~ ~ ~ Items set from entity @s EnderItems

function mcmmo:player/data/fetch

data modify storage mcmmo:temp PreviousItems set from storage mcmmo:players Result.Value.PreviousItems

scoreboard players set #t0 mcmmo.menu 0
execute store result score #t0 mcmmo.menu run data modify storage mcmmo:players Result.Value.PreviousItems set from storage mcmmo:temp CurrentItems
execute unless score #t0 mcmmo.menu matches 1 run return 1

function mcmmo:player/data/save
function mcmmo:menu/on_change

