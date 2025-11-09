data modify block ~ ~ ~ Items set value []
function mcmmo:menu/_/load_container_menu

# Save PreviousItems to player data
function mcmmo:player/data/fetch
data modify storage mcmmo:players Result.Value.PreviousItems set from block ~ ~ ~ Items
function mcmmo:player/data/save

return run loot replace entity @s enderchest.0 mine ~ ~ ~ stick[custom_data={drop_contents:1b}]
