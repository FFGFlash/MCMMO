# Get the owner of @s and add the tag mcmmo.owner (make sure to remove this tag once you're done with the owner)
execute if entity @e[type=minecraft:marker] run return run function mcmmo:utility/_has_owner_marker
execute if entity @e[type=#mcmmo:ownable] run return run function mcmmo:utility/_has_owner_ownable
return fail