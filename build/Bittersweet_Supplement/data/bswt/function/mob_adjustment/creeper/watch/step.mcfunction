execute unless block ~ ~ ~ #bswt:nonsolid run return fail
tag @e[type=minecraft:creeper, distance=..2] add WatchedCreeper
execute if entity @e[type=minecraft:creeper, distance=..2] run tag @s add WatchingCreeper
