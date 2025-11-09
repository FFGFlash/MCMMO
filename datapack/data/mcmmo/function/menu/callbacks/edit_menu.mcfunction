$scoreboard players set @s mcmmo.menu_editor $(page)
$scoreboard players set #t2 mcmmo.menu_editor $(size)
scoreboard players operation @s mcmmo.menu_editor *= #t2 mcmmo.menu_editor
$scoreboard players set #t2 mcmmo.menu_editor $(offset)
scoreboard players operation @s mcmmo.menu_editor += #t2 mcmmo.menu_editor

scoreboard players set @s mcmmo.menu 1