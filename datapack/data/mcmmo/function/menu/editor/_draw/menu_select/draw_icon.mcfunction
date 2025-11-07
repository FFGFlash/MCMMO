$execute unless data storage mcmmo:menu_editor Menus.Items[$(Index)] run return fail
$data modify block ~ ~ ~ Items[{Slot:$(Slot)}] merge from storage mcmmo:menu_editor Menus.Items[$(Index)].Icon
return 1