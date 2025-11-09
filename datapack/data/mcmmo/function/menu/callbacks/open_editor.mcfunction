# TODO: Make this actually do something
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "-======================================================================-"]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "                                Menu Editor                             "]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "                                                                        "]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "                        [Save]               [Exit]                     "]
tellraw @a[tag=mcmmo.clicker] [{text:"",color:"green"}, "-======================================================================-"]

# Exit the menu system
scoreboard players set @s mcmmo.menu -1

# Load the edittable menu
function mcmmo:menu/editor/load_menu