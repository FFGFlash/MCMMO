scoreboard players set #t0 mcmmo.menu 0
execute store result score #t0 mcmmo.menu run clear @s *[minecraft:custom_data~{menu_item:1b}]
execute if score #t0 mcmmo.menu matches 1 run tag @s add mcmmo.clicker