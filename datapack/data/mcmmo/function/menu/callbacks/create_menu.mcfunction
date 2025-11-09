execute store result score @s mcmmo.menu_editor run function mcmmo:lists/add { \
  target: "mcmmo:menus", \
  data: { \
    Item: { id: "minecraft:stone_button", count: 1, components: {"minecraft:custom_name": {translate: "mcmmo.menu.new_menu", color: "yellow", italic: 0b}} }, \
    Items: [] \
  } \
}

scoreboard players set @s mcmmo.menu 1