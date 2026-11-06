effect clear @s minecraft:slowness
execute unless entity @a[distance=..64] run return run attribute @s minecraft:movement_speed base set 0.47
execute unless entity @a[distance=..56] run return run attribute @s minecraft:movement_speed base set 0.44
execute unless entity @a[distance=..48] run return run attribute @s minecraft:movement_speed base set 0.41
execute unless entity @a[distance=..40] run return run attribute @s minecraft:movement_speed base set 0.38
execute unless entity @a[distance=..32] run return run attribute @s minecraft:movement_speed base set 0.35
execute unless entity @a[distance=..24] run return run attribute @s minecraft:movement_speed base set 0.32
execute unless entity @a[distance=..16] run return run attribute @s minecraft:movement_speed base set 0.29
execute unless entity @a[distance=..8] run return run attribute @s minecraft:movement_speed base set 0.26
attribute @s minecraft:movement_speed base set 0.23
