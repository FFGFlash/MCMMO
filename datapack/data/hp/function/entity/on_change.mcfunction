# Update health last update so we don't run this multiple times
scoreboard players operation @s hp.health_last_update = @s hp.health

# Kill the entity
execute if score @s hp.health matches ..0 run return run function hp:entity/on_death