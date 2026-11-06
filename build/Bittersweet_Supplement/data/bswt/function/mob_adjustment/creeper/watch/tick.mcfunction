tag @e[type=minecraft:creeper, tag=WatchedCreeper] remove WatchedCreeper
tag @s remove WatchingCreeper
execute unless entity @e[type=minecraft:creeper, distance=..64] run return fail
execute anchored eyes positioned ^ ^ ^ run function bswt:mob_adjustment/creeper/watch/step
execute anchored eyes positioned ^ ^ ^4 run function bswt:mob_adjustment/creeper/watch/step
execute anchored eyes positioned ^ ^ ^8 run function bswt:mob_adjustment/creeper/watch/step
execute anchored eyes positioned ^ ^ ^12 run function bswt:mob_adjustment/creeper/watch/step
execute anchored eyes positioned ^ ^ ^16 run function bswt:mob_adjustment/creeper/watch/step
execute as @e[type=minecraft:creeper, tag=WatchedCreeper] run function bswt:mob_adjustment/creeper/watch/tick/nested_execute_0
execute as @e[type=minecraft:creeper, tag=!WatchedCreeper] at @s run function bswt:mob_adjustment/creeper/watch/tick/nested_execute_1
