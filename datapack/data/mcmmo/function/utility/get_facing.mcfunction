# Check the entity's x_rotation for vertical facing direction
# Down
execute if entity @s[x_rotation=45..90] run return 6
# Up
execute if entity @s[x_rotation=-90..-45] run return 5

# Check the entity's y_rotation for horizontal facing direction
# South
execute if entity @s[y_rotation=-45..45] run return 3
# West
execute if entity @s[y_rotation=45..135] run return 4
# North
execute unless entity @s[y_rotation=-135..135] run return 1
# East
execute if entity @s[y_rotation=-135..-45] run return 2

# If somehow we fail to find a facing direciton, throw error
return fail