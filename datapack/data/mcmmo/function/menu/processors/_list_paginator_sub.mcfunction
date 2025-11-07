$execute unless score @s $(score) matches 0 run return 1
data modify storage mcmmo:menu Temp.Item merge value { \
  id: "minecraft:light_gray_stained_glass_pane", \
  components: { \
    "minecraft:item_model": "mcmmo:menu/blank", \
    "minecraft:tooltip_display": { hide_tooltip: 1b } \
  } \
}