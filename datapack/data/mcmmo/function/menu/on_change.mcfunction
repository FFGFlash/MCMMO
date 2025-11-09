say menu changed

execute as @a run function mcmmo:menu/_/get_clicker

data modify storage mcmmo:temp InputItems set from storage mcmmo:temp CurrentItems
data remove storage mcmmo:temp InputItems[{components:{"minecraft:custom_data":{menu_item:1b}}}]
execute if data storage mcmmo:temp InputItems[0] run return run function mcmmo:menu/on_input

data modify storage mcmmo:temp Items set from storage mcmmo:temp PreviousItems
data modify storage mcmmo:temp Items[].components.minecraft:custom_data merge value {prev:1b}
data modify block ~ ~ ~ Items insert 0 from storage mcmmo:temp Items
data remove storage mcmmo:temp Items
data modify storage mcmmo:temp Items append from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{prev:1b}}}]
data remove storage mcmmo:temp InputItems
data modify storage mcmmo:temp InputItems append from storage mcmmo:temp Items[{components:{"minecraft:custom_data":{menu_item:1b}}}]
execute unless data storage mcmmo:temp InputItems[0].components.minecraft:custom_data.on_click run data remove storage mcmmo:temp InputItems[0]
execute if data storage mcmmo:temp InputItems[0] unless data storage mcmmo:temp InputItems[1] run return run function mcmmo:menu/on_click

function mcmmo:menu/refresh