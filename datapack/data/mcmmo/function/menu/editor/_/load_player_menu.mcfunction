data modify block ~ ~ ~ Items set value []
function mcmmo:menu/_/load_container_menu
return run loot replace entity @s enderchest.0 mine ~ ~ ~ stick[custom_data={drop_contents:1b}]