effect give @s minecraft:resistance infinite 100 true
execute unless score @s hp.health = @s hp.health_last_update run function hp:entity/on_change