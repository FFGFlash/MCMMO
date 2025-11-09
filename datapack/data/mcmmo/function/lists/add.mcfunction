$execute unless data storage $(target) Count run return fail

$data modify storage mcmmo:temp List merge from storage $(target)
$data modify storage mcmmo:temp Value set value $(data)

scoreboard players set result mcmmo.lists 0
execute store result score result mcmmo.lists run function mcmmo:lists/_/add

$data modify storage $(target) {} merge from storage mcmmo:temp List

function mcmmo:lists/_/cleanup

return run scoreboard players get result mcmmo.lists