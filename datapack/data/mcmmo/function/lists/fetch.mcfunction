$execute unless data storage $(target) Count run return fail

$data modify storage mcmmo:temp List merge from storage $(target)
$data modify storage mcmmo:temp Index set value $(index)

scoreboard players set result mcmmo.lists 0
execute store result score result mcmmo.lists run function mcmmo:lists/_/fetch

$execute if score result mcmmo.lists matches 1 run data modify storage $(target) Result set from storage mcmmo:temp List.Data[0]
$execute if score result mcmmo.lists matches 0 run data remove storage $(target) Result

function mcmmo:lists/_/cleanup

return run scoreboard players get result mcmmo.lists