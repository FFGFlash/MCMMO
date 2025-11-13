# Add the tag to the entity so that it only runs once
tag @s add hp.initialized

# Set the player's health to the default value when they first join
scoreboard players operation @s hp.max_health = #default hp.max_health
scoreboard players operation @s hp.health = #default hp.max_health
scoreboard players operation @s hp.health_last_update = #default hp.max_health
