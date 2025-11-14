# Initialize entities that don't currently have a max health
execute as @e[tag=!stats.initialized] at @s run function stats:entity/init
execute as @e at @s run function stats:entity/tick