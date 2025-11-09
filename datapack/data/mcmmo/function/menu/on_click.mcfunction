execute unless data storage mcmmo:temp InputItems[0].components.minecraft:custom_data.on_click.args run function mcmmo:menu/_/run_callback with storage mcmmo:temp InputItems[0].components.minecraft:custom_data.on_click
execute if data storage mcmmo:temp InputItems[0].components.minecraft:custom_data.on_click.args run function mcmmo:menu/_/run_callback_with_args with storage mcmmo:temp InputItems[0].components.minecraft:custom_data.on_click

function mcmmo:menu/refresh