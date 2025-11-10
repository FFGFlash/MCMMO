scoreboard players set @s mcmmo.npc 1

execute unless entity @s[advancements={mcmmo:firstia/meet_the_meat=true}] run return run function mcmmo:npc/henry/dialog/1
execute unless entity @s[advancements={mcmmo:firstia/sacred_marinade=true}] run return run function mcmmo:npc/henry/dialog/2