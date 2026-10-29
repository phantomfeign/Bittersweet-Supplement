$execute at @s anchored eyes run summon snowball ^ ^ ^ {Tags:["bswt.projectileMotionSnowball","bswt.newSnowball",$(Tags)]}
execute at @s anchored eyes run summon marker ^ ^ ^1 {Tags: ["bswt.snowballTarget"]}
execute as @e[sort=nearest, limit=1, tag=bswt.snowballTarget] store result score .target_x bswt.projectileMath run data get entity @s Pos[0] 1000
execute as @e[sort=nearest, limit=1, tag=bswt.snowballTarget] store result score .target_y bswt.projectileMath run data get entity @s Pos[1] 1000
execute as @e[sort=nearest, limit=1, tag=bswt.snowballTarget] store result score .target_z bswt.projectileMath run data get entity @s Pos[2] 1000
execute as @e[sort=nearest, limit=1, tag=bswt.newSnowball] store result score .projectile_x bswt.projectileMath run data get entity @s Pos[0] 1000
execute as @e[sort=nearest, limit=1, tag=bswt.newSnowball] store result score .projectile_y bswt.projectileMath run data get entity @s Pos[1] 1000
execute as @e[sort=nearest, limit=1, tag=bswt.newSnowball] store result score .projectile_z bswt.projectileMath run data get entity @s Pos[2] 1000
scoreboard players operation .target_x bswt.projectileMath -= .projectile_x bswt.projectileMath
scoreboard players operation .target_y bswt.projectileMath -= .projectile_y bswt.projectileMath
scoreboard players operation .target_z bswt.projectileMath -= .projectile_z bswt.projectileMath
$execute as @e[sort=nearest,limit=1,tag=bswt.newSnowball] store result entity @s Motion[0] double $(Xscale) run scoreboard players get .target_x bswt.projectileMath
$execute as @e[sort=nearest,limit=1,tag=bswt.newSnowball] store result entity @s Motion[1] double $(Yscale) run scoreboard players get .target_y bswt.projectileMath
$execute as @e[sort=nearest,limit=1,tag=bswt.newSnowball] store result entity @s Motion[2] double $(Zscale) run scoreboard players get .target_z bswt.projectileMath
tag @e[sort=nearest, limit=1, type=snowball, tag=bswt.newSnowball] remove bswt.newSnowball
kill @e[sort=nearest, limit=1, type=marker, tag=bswt.snowballTarget]
