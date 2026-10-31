execute if items entity @s inventory.* minecraft:arrow run return fail
execute if items entity @s hotbar.* minecraft:arrow run return fail
execute if items entity @s inventory.* minecraft:stray_spawn_egg run return run function utility:ghost_arrow/add
execute if items entity @s hotbar.* minecraft:stray_spawn_egg run return run function utility:ghost_arrow/add
