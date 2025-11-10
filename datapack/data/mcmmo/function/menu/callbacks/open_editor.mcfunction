execute as @a[tag=mcmmo.clicker] run function mcmmo:player/data/fetch
data modify storage mcmmo:players Result.Value.EditorUUID set from entity @s UUID
execute as @a[tag=mcmmo.clicker] run function mcmmo:player/data/save

tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "-======================================-"]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "              Menu Editor               "]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "                                        "]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "            ", {text:"[Save]"}, "   ", {text:"[Exit]"}, "             "]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "-======================================-"]

# Exit the menu system
scoreboard players set @s mcmmo.menu -1

# Load the edittable menu
function mcmmo:menu/editor/load_menu