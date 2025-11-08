# Shift the list to start from the target index (fail if the target index is out of bounds)
scoreboard players set #T1 mcmmo.lists 0
execute store result score #T1 mcmmo.lists run function mcmmo:lists/_/fetch
execute if score #T1 mcmmo.lists matches 0 run return fail

# Remove the first element of the list (the target index)
data remove storage mcmmo:temp List.Data[0]

# Update the total count
execute store result score #T0 mcmmo.lists run data get storage mcmmo:temp List.Count
scoreboard players remove #T0 mcmmo.lists 1
execute store result storage mcmmo:temp List.Count int 1 run scoreboard players get #T0 mcmmo.lists

# Store the target index
execute store result score #T0 mcmmo.lists run data get storage mcmmo:temp Index

# Store the current index so we know when we fully looped through the list (If the current index is greater than the target subtract 1)
execute store result score #T1 mcmmo.lists run data get storage mcmmo:temp List.Data[0].Index
execute if score #T1 mcmmo.lists > #T0 mcmmo.lists run scoreboard players remove #T1 mcmmo.lists 1

# Loop through the entire list
return run function mcmmo:lists/_/_remove