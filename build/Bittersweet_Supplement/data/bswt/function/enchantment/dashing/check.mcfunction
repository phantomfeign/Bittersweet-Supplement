execute if predicate bswt:flag/on_ground run function bswt:enchantment/dashing/check/nested_execute_0
execute as @s[tag=dashEligible] unless predicate bswt:player/input/sneak run tag @s add releasedSneak
execute as @s[tag=releasedSneak] if predicate bswt:player/input/sneak run function bswt:enchantment/dashing/check/nested_execute_1
