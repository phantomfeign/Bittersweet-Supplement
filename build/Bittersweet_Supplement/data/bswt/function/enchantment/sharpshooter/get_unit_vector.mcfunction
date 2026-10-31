execute store result entity @s Pos[0] double 0.00012207031 run scoreboard players get #projectileX bswt.Math
execute store result entity @s Pos[1] double 0.00012207031 run scoreboard players get #projectileY bswt.Math
execute store result entity @s Pos[2] double 0.00012207031 run scoreboard players get #projectileZ bswt.Math
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^0.5
execute store result score #motion.unit.x bswt.Math run data get entity @s Pos[0] 256
execute store result score #motion.unit.y bswt.Math run data get entity @s Pos[1] 256
execute store result score #motion.unit.z bswt.Math run data get entity @s Pos[2] 256
