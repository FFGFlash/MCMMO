# Initialize the entity
execute if entity @s[tag=!stats.initialized] run function stats:entity/init
# Kill the entity if marked for death
execute if entity @s[tag=stats.kill] run function stats:entity/health/kill

# Give infinite resistance to prevent entity from taking normal damage
effect give @s minecraft:resistance infinite 100 true

# Check for stat changes
execute unless score @s stats.health = @s stats.health_last_update run function stats:entity/health/on_change