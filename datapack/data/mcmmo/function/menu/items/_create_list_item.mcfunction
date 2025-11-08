$summon item ~ ~ ~ { \
  Tags: ["mcmmo.init"], \
  Item: { \
    id: "minecraft:paper", \
    components: { \
      "minecraft:custom_name": { translate: "mcmmo.menu_editor.list_descriptor", color: "white", italic: 0b, with: [{ score: { name: "#i", objective: "mcmmo.core" } }] }, \
      "minecraft:item_model": "mcmmo:menu/list_descriptor", \
      "minecraft:custom_data": { list: { score: "$(score)", offset: -1, size: $(size), storage: "$(storage)", path: "$(path)" } } \
    } \
  } \
}

execute as @e[tag=mcmmo.init,limit=1] run function mcmmo:utility/parse_item_name
execute as @e[tag=mcmmo.init,limit=1] run function mcmmo:utility/set_owner
execute store result entity @e[tag=mcmmo.init,limit=1] Item.components.minecraft:custom_data.list.offset int 1 run scoreboard players get #i mcmmo.core

tag @e[tag=mcmmo.init] remove mcmmo.init

# decrement by 1, check >= 0 ? continue loop : return
scoreboard players remove #i mcmmo.core 1
$execute if score #i mcmmo.core matches 0.. run return run function mcmmo:menu/items/_create_list_item { size: $(size), score: "$(score)", storage: "$(storage)", path: "$(path)" }
return 1