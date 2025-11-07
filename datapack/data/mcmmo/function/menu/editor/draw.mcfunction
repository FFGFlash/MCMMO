execute if score @s mcmmo.menu_editor matches 0 run return run function mcmmo:menu/editor/_draw/menu_select
execute if score @s mcmmo.menu_editor matches 1 run return run function mcmmo:menu/editor/_draw/menu_settings
execute if score @s mcmmo.menu_editor matches 2 run return run function mcmmo:menu/editor/_draw/menu_editor

tellraw @a[tag=mcmmo.owner] [{text:"Trying to draw an unknown menu (","color":"yellow"},{score:{name:"@s",objective:"mcmmo.menu_editor"}},{text:")."}]

return fail