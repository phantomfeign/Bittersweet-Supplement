data merge entity @s {block_state: {Name: "minecraft:moss_block"}, Tags: ["bswt.vinerySpore"], transformation: {translation: [-0.2f, -0.2f, -0.2f], scale: [0.4f, 0.4f, 0.4f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}}
execute store result score @s bswt.projectileLifeSpan run random value 5..15
execute store result entity @s Rotation[1] float 1 run random value -90..-60 float
execute store result entity @s Rotation[0] float 1 run random value -180..180 float
