scoreboard players set #t0 mcmmo.menu 0
$execute store result score #t0 mcmmo.menu run function mcmmo:lists/fetch { index: $(index), target: $(list) }
$execute if score #t0 mcmmo.menu matches 1 run return run data modify storage mcmmo:temp Items[0] merge from storage $(list) Result.Value$(path)
function mcmmo:menu/modifiers/load_item_from_list/_/blank