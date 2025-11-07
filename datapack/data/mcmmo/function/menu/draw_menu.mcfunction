execute store result storage mcmmo:menu Temp.Id int 1 run scoreboard players get @s mcmmo.menu

scoreboard players reset #temp mcmmo.menu
execute if entity @s[type=minecraft:player] positioned ~ -64 ~ run function mcmmo:menu/_draw_menu_player
execute unless entity @s[type=minecraft:player] store result score #temp mcmmo.menu if data block ~ ~ ~ Items run function mcmmo:menu/_draw_menu with storage mcmmo:menu Temp

execute if score #temp mcmmo.menu matches 1.. run return 1

# Notify that the entity being executed on is an invalid container entity.
tellraw @a[tag=mcmmo.debug] [{ text: "[menu/draw_menu] Failed to draw menu. Entity: ", color: "dark_red" }, { entity: "@s", nbt: "UUID" }, " Pos: ", { entity: "@s", nbt: "Pos"}, " Dim: ", { entity: "@s", nbt: "Dimension"}]
return fail