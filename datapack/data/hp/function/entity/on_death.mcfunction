scoreboard players operation @s hp.health = @s hp.max_health
scoreboard players operation @s hp.health_last_update = @s hp.max_health

# TODO: Add a way to specify cause of death?
effect clear @s minecraft:resistance
damage @s 20 minecraft:generic