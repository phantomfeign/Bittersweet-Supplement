execute store result score #projectileX bswt.Math run data get entity @s Motion[0] 1000
execute store result score #projectileY bswt.Math run data get entity @s Motion[1] 1000
execute store result score #projectileZ bswt.Math run data get entity @s Motion[2] 1000
scoreboard players operation #projectileX bswt.Math *= #150 bswt.Math
scoreboard players operation #projectileX bswt.Math /= #100 bswt.Math
scoreboard players operation #projectileY bswt.Math *= #150 bswt.Math
scoreboard players operation #projectileY bswt.Math /= #100 bswt.Math
scoreboard players operation #projectileZ bswt.Math *= #150 bswt.Math
scoreboard players operation #projectileZ bswt.Math /= #100 bswt.Math
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #projectileX bswt.Math
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #projectileY bswt.Math
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #projectileZ bswt.Math
