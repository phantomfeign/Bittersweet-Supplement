attribute @s minecraft:attack_speed modifier remove bswt:desperation
execute as @s[scores={bswt.myHealth=11..}] run return fail
execute if score @s bswt.myHealth matches 9..10 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.2 add_value
execute if score @s bswt.myHealth matches 7..8 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.4 add_value
execute if score @s bswt.myHealth matches 5..6 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.6 add_value
execute if score @s bswt.myHealth matches 3..4 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 0.8 add_value
execute if score @s bswt.myHealth matches 1..2 run return run attribute @s minecraft:attack_speed modifier add bswt:desperation 1.0 add_value
