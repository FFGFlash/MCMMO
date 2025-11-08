$function mcmmo:lists/fetch { index: $(index), target: $(list) }
$data modify storage mcmmo:temp Items[0] merge from storage $(list) Result.Value$(path)