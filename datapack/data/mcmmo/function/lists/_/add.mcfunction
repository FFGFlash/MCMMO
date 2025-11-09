data modify storage mcmmo:temp List.Data prepend value {}
data modify storage mcmmo:temp List.Data[0].Value set from storage mcmmo:temp Value
data modify storage mcmmo:temp List.Data[0].Index set from storage mcmmo:temp List.Count

execute store result score #t1 mcmmo.lists run data get storage mcmmo:temp List.Count

execute store result score #t0 mcmmo.lists run data get storage mcmmo:temp List.Count
scoreboard players add #t0 mcmmo.lists 1
execute store result storage mcmmo:temp List.Count int 1 run scoreboard players get #t0 mcmmo.lists

return run scoreboard players get #t1 mcmmo.lists