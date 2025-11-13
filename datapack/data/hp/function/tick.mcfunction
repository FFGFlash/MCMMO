# Initialize entities that don't currently have a max health
execute as @e[tag=!hp.initialized] at @s run function hp:entity/init
execute as @e at @s run function hp:entity/tick