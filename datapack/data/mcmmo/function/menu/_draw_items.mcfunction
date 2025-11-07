function mcmmo:menu/_draw_item

# Rotate the item array so index 0 is always the item we're working on
data modify storage mcmmo:menu Temp.Items append from storage mcmmo:menu Temp.Items[0]
data remove storage mcmmo:menu Temp.Items[0]

# Increment by 1, check < 27 ? continue loop : return
scoreboard players add #i mcmmo.menu 1
execute if score #i mcmmo.menu matches ..26 run return run function mcmmo:menu/_draw_items
return 1