tag @s add bswt.spawnChecked
data modify entity @s drop_chances set value {head: 0.0f, chest: 0.0f, legs: 0.0f, feet: 0.0f, mainhand: 0.0f, offhand: 0.0f}
execute as @s[tag=bswt.trialChamberSpawn] run return fail
execute if entity @s[type=minecraft:zombie] run function bswt:mob_adjustment/zombie/spawn
execute if entity @s[type=minecraft:husk] run function bswt:mob_adjustment/husk/spawn
execute if entity @s[type=minecraft:drowned] run function bswt:mob_adjustment/drowned/spawn
execute if entity @s[type=minecraft:skeleton] run function bswt:mob_adjustment/skeleton/spawn
execute if entity @s[type=minecraft:parched] run function bswt:mob_adjustment/parched/spawn
execute if entity @s[type=minecraft:stray] run function bswt:mob_adjustment/stray/spawn
execute if entity @s[type=minecraft:bogged] run function bswt:mob_adjustment/bogged/spawn
execute if entity @s[type=minecraft:creeper] run function bswt:mob_adjustment/creeper/spawn
execute if entity @s[type=minecraft:phantom] run function bswt:mob_adjustment/phantom/spawn
execute if entity @s[type=minecraft:spider] run function bswt:mob_adjustment/spider/spawn
execute if entity @s[type=minecraft:cave_spider] run function bswt:mob_adjustment/cave_spider/spawn
execute if entity @s[type=minecraft:silverfish] run function bswt:mob_adjustment/silverfish/spawn
execute if entity @s[type=minecraft:enderman] run function bswt:mob_adjustment/enderman/spawn
execute if entity @s[type=minecraft:snow_golem] run function bswt:mob_adjustment/snow_golem/spawn
execute if entity @s[type=minecraft:iron_golem] run function bswt:mob_adjustment/iron_golem/spawn
execute if entity @s[type=minecraft:elder_guardian] run function bswt:mob_adjustment/elder_guardian/spawn
execute if entity @s[type=minecraft:guardian] run function bswt:mob_adjustment/guardian/spawn
execute if entity @s[type=minecraft:warden] run function bswt:mob_adjustment/warden/spawn
execute if entity @s[type=minecraft:wither] run function bswt:mob_adjustment/wither/spawn
execute if entity @s[type=minecraft:wandering_trader] run function bswt:mob_adjustment/wandering_trader/spawn
execute if entity @s[type=minecraft:area_effect_cloud] run function bswt:mob_adjustment/area_effect_cloud/spawn
