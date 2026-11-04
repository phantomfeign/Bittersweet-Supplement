execute store result score #projectile_x bswt.Math run data get entity @s Pos[0] 1000
execute store result score #projectile_y bswt.Math run data get entity @s Pos[1] 1000
execute store result score #projectile_z bswt.Math run data get entity @s Pos[2] 1000
scoreboard players operation #target_x bswt.Math -= #projectile_x bswt.Math
scoreboard players operation #target_y bswt.Math -= #projectile_y bswt.Math
scoreboard players operation #target_z bswt.Math -= #projectile_z bswt.Math
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #target_x bswt.Math
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #target_y bswt.Math
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #target_z bswt.Math
tag @s remove bswt.newSnowball
kill @e[sort=nearest, limit=1, type=marker, tag=bswt.snowballTarget]
