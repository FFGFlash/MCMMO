$scoreboard players set #list_size mcmmo.menu $(size)

execute store result score #max_page mcmmo.menu run data get storage $(storage) $(path).Count
scoreboard players remove #max_page mcmmo.menu 1
scoreboard players operation #max_page mcmmo.menu /= #list_size mcmmo.menu

$execute unless score @s $(score) < #max_page mcmmo.menu run return 1
data modify storage mcmmo:menu Temp.Item merge value { \
  id: "minecraft:light_gray_stained_glass_pane", \
  components: { \
    "minecraft:item_model": "mcmmo:menu/blank", \
    "minecraft:tooltip_display": { hide_tooltip: 1b } \
  } \
}