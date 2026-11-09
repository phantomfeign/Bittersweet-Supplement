execute if items entity @s inventory.* #bswt:needs_replacement_adjustment run function bswt:misc/modify_items/process/replacements
execute if items entity @s hotbar.* #bswt:needs_replacement_adjustment run function bswt:misc/modify_items/process/replacements

execute if items entity @s inventory.* #bswt:needs_stack_adjustments[!max_stack_size=64] run function bswt:misc/modify_items/process/stack_sizes
execute if items entity @s hotbar.* #bswt:needs_stack_adjustments[!max_stack_size=64] run function bswt:misc/modify_items/process/stack_sizes

execute if items entity @s inventory.* #bswt:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bswt:misc/modify_items/process/transforms
execute if items entity @s hotbar.* #bswt:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bswt:misc/modify_items/process/transforms

execute if items entity @s inventory.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run function bswt:misc/modify_items/process/water_bottle
execute if items entity @s hotbar.* minecraft:potion[potion_contents={potion:"minecraft:water"},!max_stack_size=64] run function bswt:misc/modify_items/process/water_bottle

execute if items entity @s hotbar.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run return run function bswt:misc/modify_items/process/arrow
execute if items entity @s inventory.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run return run function bswt:misc/modify_items/process/arrow

advancement revoke @s only bswt:food/stack_sizes
