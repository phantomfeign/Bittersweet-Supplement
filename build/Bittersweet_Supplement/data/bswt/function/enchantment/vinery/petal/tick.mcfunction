particle minecraft:tinted_leaves{color: [0.604d, 0.702d, 0.259d, 1.0d]} ~ ~ ~ 0 0 0 0 1
execute if score @s bswt.projectileLifeSpan matches 1.. run return run function bswt:enchantment/vinery/petal/tick/nested_return_0
execute unless entity @e[type=!#bswt:nonliving_entity, type=!#bswt:is_passive, tag=!bswt.vineryCaster, distance=..15] run return run kill @s
data modify entity @s {} merge value {interpolation_duration: 1, start_interpolation: 0, transformation: {left_rotation: [0.0f, 0.924f, 0.0f, 0.383f]}}
execute facing entity @e[type=!#bswt:nonliving_entity, type=!#bswt:is_passive, tag=!bswt.vineryCaster, limit=1, sort=nearest] eyes run tp @s ^ ^ ^0.5
execute if entity @e[type=!#bswt:nonliving_entity, type=!#bswt:is_passive, tag=!bswt.vineryCaster, distance=..2] at @e[limit=1, sort=nearest] positioned ~ ~1 ~ run function bswt:enchantment/vinery/petal/tick/nested_execute_0
