execute if entity @s[type=#bswt:nonliving_entity] run return fail
tag @s add bswt.frostbitten
data merge entity @s {TicksFrozen: 9999s}
effect give @s minecraft:slowness infinite 0 true
execute as @s[type=!player] run scoreboard players set @s bswt.frostbiteTimer 10
execute as @s[type=player] run scoreboard players set @s bswt.frostbiteTimer 6
function bswt:mob_effect/fire/remove
