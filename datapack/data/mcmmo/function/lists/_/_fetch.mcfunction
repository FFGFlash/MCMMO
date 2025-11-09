# Check if the current index is equal to the target index
scoreboard players set #t1 mcmmo.lists 0
data modify storage mcmmo:temp Temp set from storage mcmmo:temp Index
execute store success score #t1 mcmmo.lists run data modify storage mcmmo:temp Temp set from storage mcmmo:temp List.Data[0].Index
execute if score #t1 mcmmo.lists matches 0 run return 1

# Shift the first element of the list to the end of the list
data modify storage mcmmo:temp List.Data append from storage mcmmo:temp List.Data[0]
data remove storage mcmmo:temp List.Data[0]

# Check if the next index is the start index
execute store result score #t1 mcmmo.lists run data get storage mcmmo:temp List.Data[0].Index
execute if score #t1 mcmmo.lists = #t0 mcmmo.lists run return fail

# Check the next index
return run function mcmmo:lists/_/_fetch