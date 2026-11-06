execute as @s[tag=bswt.filterBypass] run return run function bswt:mob_adjustment/universal/route
execute if entity @s[tag=bswt.extraSpawn] at @s run spreadplayers ~ ~ 2 4 false @s
execute at @s if dimension minecraft:overworld run execute if entity @s[type=#bswt:spawn/block/surface] if predicate bswt:on_surface run tag @s add bswt.spawnForbidden
execute at @s if dimension minecraft:overworld run execute if entity @s[type=#bswt:spawn/block/see_sky] if predicate bswt:see_sky run tag @s add bswt.spawnForbidden
execute as @s[type=#minecraft:zombies, nbt={IsBaby: 1b}] run data merge entity @s {IsBaby: 0b}
execute if entity @s[type=minecraft:creeper] if predicate bswt:on_surface unless predicate bswt:chance/10 run tag @s add bswt.spawnForbidden
execute as @s[type=minecraft:villager] run tag @s add bswt.spawnForbidden
execute as @s[tag=bswt.spawnForbidden] run return run function utility:delete_self
function bswt:mob_adjustment/universal/route
