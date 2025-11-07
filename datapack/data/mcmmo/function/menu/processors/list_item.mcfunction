$scoreboard players set #list_size mcmmo.menu $(size)
$scoreboard players operation #list_index mcmmo.menu = @s $(score)
scoreboard players operation #list_index mcmmo.menu *= #list_size mcmmo.menu
$scoreboard players add #list_index mcmmo.menu $(offset)

execute store result storage mcmmo:menu Temp.Item.components.minecraft:custom_data.list.index int 1 run scoreboard players get #list_index mcmmo.menu

function mcmmo:menu/processors/_list_item with storage mcmmo:menu Temp.Item.components.minecraft:custom_data.list