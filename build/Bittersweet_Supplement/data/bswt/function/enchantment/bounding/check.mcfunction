execute if predicate bswt:flag/on_ground run function bswt:enchantment/bounding/check/nested_execute_0
execute as @a[predicate=!bswt:flag/on_ground] if score @s bswt.playerJumps matches 0 run scoreboard players add @s bswt.playerJumps 1
execute as @s[tag=boundingJumpEligible] run function bswt:enchantment/bounding/check/nested_execute_1
execute as @s[tag=jumped] unless predicate bswt:player/input/jump run function bswt:enchantment/bounding/check/nested_execute_2
execute as @s[tag=releasedJump] run function bswt:enchantment/bounding/check/nested_execute_3
