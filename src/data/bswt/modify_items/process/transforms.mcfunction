#fireball
execute if items entity @s inventory.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run loot give @s loot bswt:misc/fireball
execute if items entity @s hotbar.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run loot give @s loot bswt:misc/fireball

execute if items entity @s inventory.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run clear @s minecraft:fire_charge[!custom_data={adjusted_item:1b}] 1
execute if items entity @s hotbar.* minecraft:fire_charge[!custom_data={adjusted_item:1b}] run clear @s minecraft:fire_charge[!custom_data={adjusted_item:1b}] 1

#breeze rod
execute if items entity @s inventory.* minecraft:breeze_rod[!custom_data={adjusted_item:1b}] run loot give @s loot bswt:misc/breeze_rod
execute if items entity @s hotbar.* minecraft:breeze_rod[!custom_data={adjusted_item:1b}] run loot give @s loot bswt:misc/breeze_rod

execute if items entity @s inventory.* minecraft:breeze_rod[!custom_data={adjusted_item:1b}] run clear @s minecraft:breeze_rod[!custom_data={adjusted_item:1b}] 1
execute if items entity @s hotbar.* minecraft:breeze_rod[!custom_data={adjusted_item:1b}] run clear @s minecraft:breeze_rod[!custom_data={adjusted_item:1b}] 1

#brown mushroom
execute if items entity @s hotbar.* minecraft:brown_mushroom run loot give @s loot bswt:food/brown_mushroom
execute if items entity @s inventory.* minecraft:brown_mushroom run loot give @s loot bswt:food/brown_mushroom

execute if items entity @s hotbar.* minecraft:brown_mushroom run clear @s minecraft:brown_mushroom 1
execute if items entity @s inventory.* minecraft:brown_mushroom run clear @s minecraft:brown_mushroom 1

#red mushroom
execute if items entity @s hotbar.* minecraft:red_mushroom run loot give @s loot bswt:food/red_mushroom 
execute if items entity @s inventory.* minecraft:red_mushroom run loot give @s loot bswt:food/red_mushroom 

execute if items entity @s hotbar.* minecraft:red_mushroom run clear @s minecraft:red_mushroom 1
execute if items entity @s inventory.* minecraft:red_mushroom run clear @s minecraft:red_mushroom 1

#retrigger
execute if items entity @s inventory.* #bswt:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bswt:misc/modify_items/check
execute if items entity @s hotbar.* #bswt:needs_general_adjustment[!custom_data={adjusted_item:1b}] run function bswt:misc/modify_items/check


