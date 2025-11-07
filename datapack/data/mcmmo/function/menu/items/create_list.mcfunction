# Ex. function mcmmo:menu/items/create_list { size: 21, score: "mcmmo.menu_list", storage: "mcmmo:menu", path: "Menus" }

# 1 <= size <= 25
$execute unless score 1 mcmmo.core matches ..$(size) run return fail
$execute unless score 25 mcmmo.core matches $(size).. run return fail

$give @s minecraft:arrow[ \
  minecraft:custom_name={ translate: "mcmmo.menu_editor.previous", color: "yellow", italic: 0b }, \
  minecraft:item_model="mcmmo:menu/left_arrow", \
  minecraft:custom_data={ list_paginator: { score: "$(score)", size: $(size), storage: "$(storage)", path: "$(path)", dir: -1 }} \
]

$give @s minecraft:arrow[ \
  minecraft:custom_name={ translate: "mcmmo.menu_editor.next", color: "yellow", italic: 0b }, \
  minecraft:item_model="mcmmo:menu/right_arrow", \
  minecraft:custom_data={ list_paginator: { score: "$(score)", size: $(size), storage: "$(storage)", path: "$(path)", dir: 1 }} \
]

$scoreboard players set #i mcmmo.core $(size)
scoreboard players remove #i mcmmo.core 1
$function mcmmo:menu/items/_create_list_item { size: $(size), score: "$(score)", storage: "$(storage)", path: "$(path)" }