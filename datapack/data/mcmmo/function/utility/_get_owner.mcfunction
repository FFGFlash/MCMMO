# Copy the Owner UUID we stored into Temp to Compare
data modify storage mcmmo:core Compare set from storage mcmmo:core Temp
# Attempt to overwrite Compare with UUID
scoreboard players reset #temp mcmmo.core
execute store success score #temp mcmmo.core run data modify storage mcmmo:core Compare set from entity @s UUID
# If we successfully overwrote Compare we didn't find the owner
execute if score #temp matches 1 run return fail
# Add the owner tag and return
tag @s add mcmmo.owner
return 1