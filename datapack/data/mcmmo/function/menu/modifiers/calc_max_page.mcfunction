$data store result score $(target) $(score) run data get storage $(list) Count
$scoreboard players set #t0 mcmmo.menu $(size)
$scoreboard players remove $(target) $(score) 1
$scoreboard players operation $(target) $(score) /= #t0 mcmmo.menu