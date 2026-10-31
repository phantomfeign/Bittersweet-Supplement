execute as @s[scores={bswt.myHealth=11..}] if predicate bswt:chance/25 run return run effect give @s minecraft:regeneration 2 1 true
execute as @s[scores={bswt.myHealth=5..10}] if predicate bswt:chance/50 run return run effect give @s minecraft:regeneration 2 1 true
execute as @s[scores={bswt.myHealth=..5}] run return run effect give @s minecraft:regeneration 2 1 true
