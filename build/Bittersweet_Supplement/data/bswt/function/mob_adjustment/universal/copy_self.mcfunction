execute unless entity @s[type=#bswt:hostiles] run return fail
execute if entity @s[type=minecraft:zombie] run summon minecraft:zombie ~ ~ ~ {Tags: ["bswt.extraSpawn"]}
execute if entity @s[type=minecraft:skeleton] run summon minecraft:skeleton ~ ~ ~ {Tags: ["bswt.extraSpawn"]}
execute if entity @s[type=minecraft:creeper] run summon minecraft:creeper ~ ~ ~ {Tags: ["bswt.extraSpawn"]}
execute if entity @s[type=minecraft:spider] run summon minecraft:spider ~ ~ ~ {Tags: ["bswt.extraSpawn"]}
