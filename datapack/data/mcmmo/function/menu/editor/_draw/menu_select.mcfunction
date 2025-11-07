# Update title and draw the sidebars
data merge block ~ ~ ~ { \
  CustomName: {translate:"mcmmo.menu_editor.title.menu_select",fallback:"Select A Menu",color:"aqua"}, \
  Items: [ \
    {Slot:0b,count:1,id:"minecraft:light_gray_stained_glass_pane",components:{item_model:"mcmmo:menu/blank",tooltip_display:{hide_tooltip:1b},custom_data:{clear:1b}}}, \
    {Slot:9b,count:1,id:"minecraft:light_gray_stained_glass_pane",components:{item_model:"mcmmo:menu/blank",tooltip_display:{hide_tooltip:1b},custom_data:{clear:1b}}}, \
    {Slot:18b,count:1,id:"minecraft:light_gray_stained_glass_pane",components:{item_model:"mcmmo:menu/blank",tooltip_display:{hide_tooltip:1b},custom_data:{clear:1b}}}, \
    {Slot:8b,count:1,id:"minecraft:light_gray_stained_glass_pane",components:{item_model:"mcmmo:menu/blank",tooltip_display:{hide_tooltip:1b},custom_data:{clear:1b}}}, \
    {Slot:17b,count:1,id:"minecraft:light_gray_stained_glass_pane",components:{item_model:"mcmmo:menu/blank",tooltip_display:{hide_tooltip:1b},custom_data:{clear:1b}}}, \
    {Slot:26b,count:1,id:"minecraft:writable_book",components:{item_model:"mcmmo:menu/plus_sign",custom_name:{text:"Create Menu",color:"green"},custom_data:{clear:1b}}} \
  ] \
}

# Draw conditional buttons
execute if score @s mcmmo.menu matches 1.. run data modify block ~ ~ ~ Items[{Slot:9b}] merge value {id:"minecraft:arrow",components:{item_model:"mcmmo:menu/left_arrow",custom_name:{text:"Previous Page",color:"aqua"},custom_data:{clear:1b}}}

# Calculate max page ((total_pages - 1) / 21)
execute store result score #temp mcmmo.menu_editor run data get storage mcmmo:menu_editor Menus.Count
scoreboard players remove #temp mcmmo.menu_editor 1
scoreboard players operation #temp mcmmo.menu_editor /= 21 mcmmo.core

execute if score @s mcmmo.menu < #temp mcmmo.menu_editor run data modify block ~ ~ ~ Items[{Slot:17b}] merge value {id:"minecraft:arrow",components:{item_model:"mcmmo:menu/right_arrow",custom_name:{text:"Next Page",color:"aqua"},custom_data:{clear:1b}}}

# Loop over all 21 menu slots drawing the menu icons
scoreboard players set #i mcmmo.core 0
function mcmmo:menu/editor/_draw/menu_select/draw_icons