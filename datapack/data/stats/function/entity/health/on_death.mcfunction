scoreboard players operation @s stats.health = @s stats.max_health
scoreboard players operation @s stats.health_last_update = @s stats.max_health

effect clear @s minecraft:resistance
tag @s add stats.kill
