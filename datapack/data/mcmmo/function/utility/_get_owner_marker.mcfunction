# Load the owner into a Temp variable
data modify storage mcmmo:core Temp set from entity @s data.Owner
execute as @e run function mcmmo:utility/_get_owner
execute unless entity @e[tag=mcmmo.owner] run return fail
return 1