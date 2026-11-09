#thanks to klei wright for this code ILY never listen to the haters
#honey
execute if items entity @s inventory.* minecraft:honey_bottle[!max_stack_size=64] run loot give @s loot bswt:food/honey_bottle
execute if items entity @s hotbar.* minecraft:honey_bottle[!max_stack_size=64] run loot give @s loot bswt:food/honey_bottle
execute if items entity @s inventory.* minecraft:honey_bottle[!max_stack_size=64] run clear @s minecraft:honey_bottle[!max_stack_size=64] 1
execute if items entity @s hotbar.* minecraft:honey_bottle[!max_stack_size=64] run clear @s minecraft:honey_bottle[!max_stack_size=64] 1

#egg
function bswt:misc/modify_items/stack_fix_macro {item:"minecraft:egg"}
function bswt:misc/modify_items/stack_fix_macro {item:"minecraft:brown_egg"}
function bswt:misc/modify_items/stack_fix_macro {item:"minecraft:blue_egg"}
function bswt:misc/modify_items/stack_fix_macro {item:"minecraft:milk_bucket"}

execute if items entity @s inventory.* #bswt:needs_stack_adjustments[!max_stack_size=64] run function bswt:misc/modify_items/check
execute if items entity @s hotbar.* #bswt:needs_stack_adjustments[!max_stack_size=64] run function bswt:misc/modify_items/check