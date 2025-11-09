# Load a blank menu into the container
data modify block ~ ~ ~ Items set value [ \
  {Slot:0b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:1b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:2b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:3b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:4b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:5b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:6b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:7b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:8b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:9b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:10b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:11b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:12b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:13b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:14b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:15b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:16b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:17b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:18b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:19b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:20b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:21b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:22b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:23b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:24b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:25b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}}, \
  {Slot:26b,id:"minecraft:light_gray_stained_glass_pane",count:1,components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_model":"mcmmo:menu/blank"}} \
]

# Load all the items into the container
data modify block ~ ~ ~ Items append from storage mcmmo:menus Result.Value.Items[]

# Load all the items with modifiers into storage
data modify storage mcmmo:temp Items set value []
data modify storage mcmmo:temp Items append from storage mcmmo:menus Result.Value.Items[{components:{"minecraft:custom_data":{menu_modifiers:[{}]}}}]

# Apply all the modifiers and place the modified items into the container
data modify storage mcmmo:temp Slot set from storage mcmmo:temp Items[-1].Slot
function mcmmo:menu/_/apply_modifiers/items
data modify block ~ ~ ~ Items append from storage mcmmo:temp Items[]

# Register all the items in the menu as menu items (might need to revist how we do this for eventually being able to store things in the menu)
data modify block ~ ~ ~ Items[].components.minecraft:custom_data.menu_item set value 1b

# Update previous items to prevent on_change from firing
data modify entity @s data.PreviousItems set from block ~ ~ ~ Items