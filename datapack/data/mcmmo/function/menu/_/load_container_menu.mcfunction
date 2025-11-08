data modify block ~ ~ ~ Items set from storage mcmmo:menus Result.Value.Items

data modify storage mcmmo:temp Items set value []
data modify storage mcmmo:temp Items append from storage mcmmo:menus Result.Value.Items[{components:{"minecraft:custom_data":{menu_modifiers:[]}}}]

data modify storage mcmmo:temp Slot set from storage mcmmo:temp Items[-1].Slot
function mcmmo:menu/_/apply_modifiers/items