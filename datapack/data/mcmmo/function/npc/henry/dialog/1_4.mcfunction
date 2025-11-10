# * Return to henry at the end of your quest

clear @s *[custom_data~{id:"mcmmo:prime_firstia_beef"}] 10

tellraw @s [{ text: "<Henry> Marvelous! Look at that marbling... the fat distribution is " }, { text: "divine!", italic: true }]
tellraw @s [{ text: "<Henry> Take this - \"The Tenderizer.\" A true instrument of faith." }]

advancement grant @s only mcmmo:firstia/a_man_and_his_meat return_to_henry