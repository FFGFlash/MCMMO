$execute unless data storage $(target) Count run return fail

$data modify storage mcmmo:temp List merge from storage $(target)
$data modify storage mcmmo:temp Index set value $(index)

scoreboard players set result mcmmo.lists 0
execute store success score result mcmmo.lists run function mcmmo:lists/_/fetch

$data modify storage $(target) Result set from storage mcmmo:temp List.Data[0]

function mcmmo:lists/_/cleanup

execute if score result mcmmo.lists matches 0 run return fail

return 1