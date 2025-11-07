execute if data storage mcmmo:menu Temp.Items[0].components.minecraft:custom_data.menu_slot run return 1
# Make a copy of our item in-case it needs multiple mutations
data modify storage mcmmo:menu Temp.Item set from storage mcmmo:menu Temp.Items[0]

# Handle list items
execute if data storage mcmmo:menu Temp.Items[0].components.minecraft:custom_data.list run function mcmmo:menu/processors/list_item with storage mcmmo:menu Temp.Items[0].components.minecraft:custom_data.list

# Finally mark the item as a menu slot
data modify storage mcmmo:menu Temp.Item.components.minecraft:custom_data.menu_slot set from storage mcmmo:menu Temp.Item.Slot

# Clone the item back into the array once everything is settled
data modify storage mcmmo:menu Temp.Items[0] set from stroage mcmmo:menu Temp.Item
return 1