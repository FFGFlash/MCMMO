# Store the current index so we know when we fully looped through the list
execute store result score #t0 mcmmo.lists run data get storage mcmmo:temp List.Data[0].Index

# Fetch the current index
return run function mcmmo:lists/_/_fetch