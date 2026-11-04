execute as @e[type=!#bswt:nonliving_entity, type=!#bswt:is_passive, tag=!bswt.vineryCaster, distance=..3, sort=nearest, limit=3] run damage @s 2 magic
playsound block.azalea_leaves.break player @a ~ ~ ~ 4 1
playsound block.leaf_litter.break player @a ~ ~ ~ 4 1.5
playsound block.wood.break player @a ~ ~ ~ 4 1.5
particle minecraft:dust_pillar{block_state: "minecraft:oak_leaves", color: [0.25d, 1.0d, 0.25d, 1.0d]} ~ ~ ~ 1 1 1 0.2 10
particle minecraft:tinted_leaves{color: [0.604d, 0.702d, 0.259d, 1.0d]} ~ ~ ~ 1 1 1 0 5
kill @s
