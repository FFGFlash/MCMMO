# Update health last update so we don't run this multiple times
scoreboard players operation @s stats.health_last_update = @s stats.health

# Kill the entity
execute if score @s stats.health matches ..0 run return run function stats:entity/health/on_death