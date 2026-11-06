execute as @e[type=area_effect_cloud, nbt={potion_contents: {custom_effects: [{id: "minecraft:luck", amplifier: 99b}]}}] at @s run function bswt:mob_adjustment/area_effect_cloud/creeper_explosion
tag @s add bswt.aec_checked
