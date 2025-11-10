execute if score @s mcmmo.option matches 1 run return run function mcmmo:npc/henry/dialog/1_1
execute if score @s mcmmo.option matches 2 run return run function mcmmo:npc/henry/dialog/1_2
advancement grant @s only mcmmo:a_man_and_his_meat talk_to_henry
dialog clear @s