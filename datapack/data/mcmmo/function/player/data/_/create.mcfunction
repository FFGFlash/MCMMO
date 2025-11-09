$execute if storage mcmmo:players Data[{UUID: $(UUID)}] run return fail
$return run function mcmmo:lists/add { target: "mcmmo:players", data: { UUID: $(UUID) } }