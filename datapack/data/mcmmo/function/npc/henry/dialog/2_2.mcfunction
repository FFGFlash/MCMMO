# * Return to henry at the end of your quest

clear @s *[custom_data~{id:"mcmmo:rosemary_of_redemption"}] 1
clear @s *[custom_data~{id:"mcmmo:garlic_of_glory"}] 1
clear @s *[custom_data~{id:"mcmmo:onion_of_omens"}] 1

tellraw @s ["<Henry> Yes... yes... oh, the scent! Do you hear that?"]
tellraw @s ["<", { selector: "@s" }, "> ... it's bubbling. Is it supposed to ", { text: "talk", italic: true }, "?"]
tellraw @s ["<Henry> Let it speak! That is the flavor of destiny, my friend!"]

advancement grant @s only mcmmo:firstia/sacred_marinade return_to_henry