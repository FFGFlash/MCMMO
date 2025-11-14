# Create scoreboards for tracking the player's current and max health
scoreboard objectives add stats.core dummy "Stats"
scoreboard objectives add stats.health dummy "Health"
scoreboard objectives add stats.health_last_update dummy "Health Last Update"
scoreboard objectives add stats.max_health dummy "Max Health"
scoreboard objectives add stats.mark_for_dead dummy "Dead"

# Set the default max health if it isn't already set
execute unless score #default stats.max_health matches 1.. run scoreboard players set #default stats.max_health 100

scoreboard players set #-1 stats.core -1