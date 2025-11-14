# Add the tag to the entity so that it only runs once
tag @s add stats.initialized

# Set the player's health to the default value when they first join
scoreboard players operation @s stats.max_health = #default stats.max_health
scoreboard players operation @s stats.health = #default stats.max_health
scoreboard players operation @s stats.health_last_update = #default stats.max_health
