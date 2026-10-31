scoreboard players add @s bswt.arrowAge 1
execute store result score #projectileX bswt.Math run data get entity @s Motion[0] 8192
execute store result score #projectileY bswt.Math run data get entity @s Motion[1] 8192
execute store result score #projectileZ bswt.Math run data get entity @s Motion[2] 8192
summon marker 0.0 0.0 0.0 {Tags: ["bswt.UnitVector"]}
execute as @e[type=marker, tag=bswt.UnitVector] run function bswt:enchantment/sharpshooter/get_unit_vector
execute if score @s bswt.arrowAge matches 1 run function bswt:enchantment/sharpshooter/get_speed
execute if score @s bswt.arrowAge matches 2 positioned 0.0 0.0 0.0 facing entity @e[limit=1, type=marker, tag=bswt.UnitVector] feet positioned as @s run function bswt:enchantment/sharpshooter/ring/1
execute if score @s bswt.arrowAge matches 3 positioned 0.0 0.0 0.0 facing entity @e[limit=1, type=marker, tag=bswt.UnitVector] feet positioned as @s run function bswt:enchantment/sharpshooter/ring/2
execute if score @s bswt.arrowAge matches 3 run tag @s remove bswt.FastArrow
kill @e[type=marker, tag=bswt.UnitVector]
