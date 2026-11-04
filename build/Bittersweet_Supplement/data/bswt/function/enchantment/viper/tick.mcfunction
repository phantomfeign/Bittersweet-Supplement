scoreboard players remove @s bswt.viperTimer 1
tag @s add bswt.viperImmune
execute as @e[type=!#bswt:nonliving_entity, tag=!bswt.viperImmune, distance=..2] run damage @s 6 minecraft:magic
tag @s remove bswt.viperImmune
particle minecraft:tinted_leaves{color: [0.604d, 0.702d, 0.259d, 1.0d]} ~ ~ ~ 1 1 1 0 3
particle minecraft:instant_effect{color: [0.5d, 0.6d, 0.2d]} ~ ~ ~ 0 0 0 0 0
playsound block.azalea_leaves.break player @a ~ ~ ~ 4 1
