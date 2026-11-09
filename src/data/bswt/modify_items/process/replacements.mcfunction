#tropical fish
execute if items entity @s hotbar.* minecraft:tropical_fish run give @s minecraft:tropical_fish_spawn_egg\
[minecraft:item_name="Tropical Fish",minecraft:item_model="minecraft:tropical_fish"]
execute if items entity @s inventory.* minecraft:tropical_fish run give @s minecraft:tropical_fish_spawn_egg\
[minecraft:item_name="Tropical Fish",minecraft:item_model="minecraft:tropical_fish"]

execute if items entity @s hotbar.* minecraft:tropical_fish run clear @s minecraft:tropical_fish 1
execute if items entity @s inventory.* minecraft:tropical_fish run clear @s minecraft:tropical_fish 1

#redo
execute if items entity @s inventory.* #bswt:needs_replacement_adjustment run function bswt:misc/modify_items/check
execute if items entity @s hotbar.* #bswt:needs_replacement_adjustment run function bswt:misc/modify_items/check