scoreboard objectives add mcmmo.core dummy "MCMMO"
scoreboard objectives add mcmmo.menu dummy "Menu IDs"
scoreboard objectives add mcmmo.menu_editor dummy "Menu Editor"
scoreboard objectives add mcmmo.menu_list dummy "Menu Editor"
scoreboard objectives add mcmmo.lists dummy "List Data"

# Constants
scoreboard players set 0 mcmmo.core 0
scoreboard players set 1 mcmmo.core 1
scoreboard players set 7 mcmmo.core 7
scoreboard players set 9 mcmmo.core 9
scoreboard players set 21 mcmmo.core 21
scoreboard players set 25 mcmmo.core 25

# Schedule our slow update to run once every second (for non-critical systems)
schedule function mcmmo:slow_update 1s

setblock 0 -64 0 minecraft:shulker_box
setblock 0 -63 0 minecraft:oak_sign

execute unless data storage mcmmo:players Data run function mcmmo:player/data/init