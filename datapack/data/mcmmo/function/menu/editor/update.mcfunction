scoreboard players reset #temp mcmmo.core
execute store result score #temp mcmmo.core run function mcmmo:utility/has_owner

# If it doesn't have an owner skip checking for one
execute unless score #temp mcmmo matches 1.. run return run function mcmmo:menu/editor/_update

function mcmmo:utility/get_owner
execute unless entity @e[tag=mcmmo.owner,distance=..10] run return run function mcmmo:menu/editor/_despawn

function mcmmo:menu/editor/_update
tag @e[tag=mcmmo.owner] remove mcmmo.owner