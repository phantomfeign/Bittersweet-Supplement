execute as @s[gamemode=creative] run return run item modify entity @s weapon.mainhand bswt:enchantment/overload/ammo/4
execute store result score @s bswt.arrowCount run clear @s arrow 0
execute if score @s bswt.arrowCount matches 4.. run return run function bswt:enchantment/overload/load_crossbow/arrow {count: 4}
execute store result score @s bswt.arrowCount run clear @s stray_spawn_egg 0
execute if score @s bswt.arrowCount matches 1.. run return run function bswt:enchantment/overload/load_crossbow/cartridge
execute store result score @s bswt.arrowCount run clear @s arrow 0
execute if score @s bswt.arrowCount matches 0 run return run function bswt:enchantment/overload/load_crossbow/arrow {count: 0}
execute if score @s bswt.arrowCount matches 1 run return run function bswt:enchantment/overload/load_crossbow/arrow {count: 1}
execute if score @s bswt.arrowCount matches 2 run return run function bswt:enchantment/overload/load_crossbow/arrow {count: 2}
execute if score @s bswt.arrowCount matches 3 run return run function bswt:enchantment/overload/load_crossbow/arrow {count: 3}
