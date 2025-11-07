# Get the owner of @s and add the tag mcmmo.owner (make sure to remove this tag once you're done with the owner)
execute if entity @e[type=minecraft:marker] run return function mcmmo:utility/_get_owner_marker
execute if entity @e[type=#mcmmo:ownable] run return function mcmmo:utility/_get_owner_ownable

tellraw @s [{"text":"Unable to get owner of \"","color":"dark_red"},{"selector":"@s"},{"text":"\"."}]
return fail