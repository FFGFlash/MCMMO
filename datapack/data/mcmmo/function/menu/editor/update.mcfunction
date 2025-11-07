function mcmmo:utility/get_owner
execute unless entity @e[tag=mcmmo.owner,distance=..10] run return run function mcmmo:menu/editor/_despawn
tag @e[tag=mcmmo.owner] remove mcmmo.owner