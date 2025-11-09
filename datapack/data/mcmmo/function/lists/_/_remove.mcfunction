# Store the current index
execute store result score #t2 mcmmo.lists run data get storage mcmmo:temp List.Data[0].Index

# Decrement the index if it's greater than the target
execute if score #t2 mcmmo.lists > #t0 mcmmo.lists run scoreboard players remove #t2 mcmmo.lists 1
execute store result storage mcmmo:temp List.Data[0].Index int 1 run scoreboard players get #t2 mcmmo.lists

# Shift the first element of the list to the end of the list
data modify storage mcmmo:temp List.Data append from storage mcmmo:temp List.Data[0]
data remove storage mcmmo:temp List.Data[0]

# Check if the next index is the start index
execute store result score #t2 mcmmo.lists run data get storage mcmmo:temp List.Data[0].Index
execute if score #t2 mcmmo.lists = #t1 mcmmo.lists run return 0

# Move to the next index
return run function mcmmo:lists/_/_remove