say despawning

setblock ~ ~ ~ minecraft:air

function mcmmo:utility/get_owner
tellraw @a[tag=mcmmo.owner] {"text":"Menu editor has been despawned","color":"yellow"}
tag @e[tag=mcmmo.owner] remove mcmmo.owner

kill @s
return 1