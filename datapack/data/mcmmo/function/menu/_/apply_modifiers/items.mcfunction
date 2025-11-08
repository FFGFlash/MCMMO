# Loop over and apply all modifiers to the current item
data modify storage mcmmo:temp Modifier set from storage mcmmo:temp Items[0].components.minecraft:custom_data.menu_modifiers[-1].id
function mcmmo:menu/_/apply_modifiers/item

# Move the current item to the end of the array
data modify storage mcmmo:temp Items append from storage mcmmo:temp Items[0]
data remove storage mcmmo:temp Items[0]

# Check if the item at the end of the array is the element we started with at the end
data modify storage mcmmo:temp Compare set from storage mcmmo:temp Slot
scoreboard players set #t0 mcmmo.menu 0
execute store success score #t0 mcmmo.menu run data modify storage mcmmo:temp Compare set from storage mcmmo:temp Items[-1].Slot

# Continue the loop if the last element is still not the initial element
execute if score #t0 mcmmo.menu matches 1 run return run function mcmmo:menu/_/apply_modifiers/items
return 1