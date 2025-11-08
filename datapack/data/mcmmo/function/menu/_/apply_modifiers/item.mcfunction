# Apply the modifier
function mcmmo:menu/_/apply_modifiers/apply_modifier with storage mcmmo:temp Items[0].components.minecraft:custom_data.menu_modifiers[0]

# Move the current modifier to the end of the array
data modify storage mcmmo:temp Items[0].components.minecraft:custom_data.menu_modifiers append from storage mcmmo:temp Items[0].components.minecraft:custom_data.menu_modifiers[0]
data remove storage mcmmo:temp Items[0].components.minecraft:custom_data.menu_modifiers[0]

# Check if the modifier at the end of the array is the modifier we started with at the end
data modify storage mcmmo:temp Compare set from storage mcmmo:temp Slot
scoreboard players set #t0 mcmmo.menu 0
execute store success score #t0 mcmmo.menu run data modify storage mcmmo:temp Compare set from storage mcmmo:temp Items[0].components.minecraft:custom_data.menu_modifiers[-1].id

# Continue the loop if the last modifier is still not the initial modifier
execute if score #t0 matches 1 run return run function mcmmo:menu/_/apply_modifiers/item
return 1