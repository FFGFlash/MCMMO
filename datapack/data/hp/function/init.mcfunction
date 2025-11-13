# Create scoreboards for tracking the player's current and max health
scoreboard objectives add hp.health dummy "Health"
scoreboard objectives add hp.health_last_update dummy "Health Last Update"
scoreboard objectives add hp.max_health dummy "Max Health"

# Set the default max health if it isn't already set
execute unless score #default hp.max_health matches 1.. run scoreboard players set #default hp.max_health 100

scoreboard players set #-1 hp.health -1