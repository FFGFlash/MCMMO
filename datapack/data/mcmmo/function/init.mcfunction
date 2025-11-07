scoreboard objectives add mcmmo.core dummy "MCMMO"
scoreboard objectives add mcmmo.menu dummy "Menu IDs"
scoreboard objectives add mcmmo.menu_editor dummy "Menu Editor"
scoreboard objectives add mcmmo.menu_list dummy "Menu Editor"

# Constants
scoreboard players set 0 mcmmo.core 0
scoreboard players set 7 mcmmo.core 7
scoreboard players set 9 mcmmo.core 9
scoreboard players set 21 mcmmo.core 21

# Schedule our slow update to run once every second (for non-critical systems)
schedule function mcmmo:slow_update 1s