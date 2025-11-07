# Sets @s' owner to be @e[sort=nearest,limit=1]
execute if entity @s[type=minecraft:marker] run return function mcmmo:utility/_set_owner_marker
execute if entity @s[type=#mcmmo:ownable] run return function mcmmo:utility/_set_owner_ownable

tellraw @s [{"text":"Unable to set owner to \"","color":"dark_red"},{"selector":"@s"},{"text":"\"."}]
return fail