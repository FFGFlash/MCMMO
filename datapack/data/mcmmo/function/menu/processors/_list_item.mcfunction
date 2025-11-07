$execute if data storage $(storage) $(path).List[$(index)] run return run data modify storage mcmmo:menu Temp.Item merge from storage $(storage) $(path).List[$(index)].Item
data modify storage mcmmo:menu Temp.Item merge value { \
  id: "minecraft:light_gray_stained_glass_pane", \
  components: { \
    "minecraft:item_model": "mcmmo:menu/empty", \
    "minecraft:tooltip_display": { hide_tooltip: 1b } \
  } \
}