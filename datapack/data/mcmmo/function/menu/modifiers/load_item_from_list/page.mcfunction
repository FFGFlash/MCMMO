$scoreboard players set #t1 mcmmo.menu $(page)
$scoreboard players set #t2 mcmmo.menu $(size)
scoreboard players operation #t1 mcmmo.menu *= #t2 mcmmo.menu
$scoreboard players set #t2 mcmmo.menu $(offset)
scoreboard players operation #t1 mcmmo.menu += #t2 mcmmo.menu

$data modify storage mcmmo:temp Args set value { target: "$(list)" }
execute store result storage mcmmo:temp Args.index int 1 run scoreboard players get #t1 mcmmo.menu

scoreboard players set #t0 mcmmo.menu 0
execute store result score #t0 mcmmo.menu run function mcmmo:lists/fetch with storage mcmmo:temp Args

$execute if score #t0 mcmmo.menu matches 1 run return run data modify storage mcmmo:temp Items[0] merge from storage $(list) Result.Value$(path)
function mcmmo:menu/modifiers/load_item_from_list/_/blank