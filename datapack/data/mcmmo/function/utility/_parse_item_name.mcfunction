setblock ~ ~ ~ minecraft:oak_sign

data modify block ~ ~ ~ front_text.messages[0] set from entity @s Item.components.minecraft:custom_name
data modify entity @s Item.components.minecraft:custom_name set from block ~ ~ ~ front_text.messages[0]
