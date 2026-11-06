execute if entity @e[type=minecraft:creeper, distance=1..10] run return run function utility:delete_self
data modify entity @s ExplosionRadius set value 0b
data modify entity @s Fuse set value 25
effect give @s minecraft:luck infinite 99 true
attribute @s minecraft:follow_range base set 999
