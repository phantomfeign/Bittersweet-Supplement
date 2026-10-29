summon minecraft:skeleton ~ ~ ~ {Health: 100.0f, Tags: ["bswt.damageDummy", "bswt.ignoreMobCheck"], attributes: [{id: "minecraft:max_health", base: 100.0d}, {id: "minecraft:movement_speed", base: 0.0d}], equipment: {head: {id: "minecraft:carved_pumpkin"}}, NoAI: true}
execute as @e[type=minecraft:skeleton, tag=bswt.damageDummy] at @s run function utility:round_position
