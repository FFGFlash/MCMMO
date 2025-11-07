# Slow Update runs every second for non-critical systems.

# Update the menu editor
execute as @e[tag=mcmmo.menu_editor] at @s run function mcmmo:menu/editor/update

# Schedule slow update again
schedule function mcmmo:slow_update 1s