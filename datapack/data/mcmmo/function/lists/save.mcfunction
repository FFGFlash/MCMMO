$execute unless data storage $(target) Count run return fail
$execute unless data storage $(target) Result run return fail

scoreboard players set result mcmmo.lists 0
$execute store success score result mcmmo.lists run data modify storage mcmmo:temp List merge from storage $(target)

$data modify storage mcmmo:temp List.Data[{Index: $(index)}] set from storage $(target) Result

function mcmmo:lists/_/cleanup

execute if score result mcmmo.lists matches 0 run return fail
return 1