scoreboard players operation @s hp.health = @s hp.max_health
scoreboard players operation @s hp.health_last_update = @s hp.max_health

effect clear @s minecraft:resistance
tag add @s hp.kill
