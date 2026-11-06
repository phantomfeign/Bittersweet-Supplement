effect clear @a[distance=..8] minecraft:luck
effect clear @s minecraft:luck
effect give @a[distance=..2] minecraft:poison 4 4
effect give @a[distance=..4] minecraft:poison 6 3
effect give @a[distance=..6] minecraft:poison 8 2
effect give @a[distance=..8] minecraft:poison 10 1
execute as @a[distance=..1] run damage @s 10 minecraft:explosion
execute as @a[distance=1.1..2] run damage @s 8 minecraft:explosion
execute as @a[distance=2.1..3] run damage @s 6 minecraft:explosion
execute as @a[distance=3.1..4] run damage @s 4 minecraft:explosion
execute as @a[distance=4.1..5] run damage @s 2 minecraft:explosion
execute as @e[distance=0..2] if entity @s[type=#bswt:zombie_variant] run effect give @s minecraft:instant_damage 1 2
execute as @e[distance=2.1..4] if entity @s[type=#bswt:zombie_variant] run effect give @s minecraft:instant_damage 1 1
summon breeze_wind_charge ~ ~1 ~ {Motion: [0.0d, -5.0d, 0.0d]}
summon breeze_wind_charge ~ ~ ~ {Motion: [0.0d, -5.0d, 0.0d]}
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 0.9
particle minecraft:noxious_gas ~ ~ ~ 1 0 1 1 20 normal
particle minecraft:geyser_base{water_blocks: 4, burst_impulse_base: 1.5d} ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:explosion_emitter ~ ~-0.5 ~
summon item ~ ~ ~ {Item: {id: "minecraft:gunpowder", count: 1}}
kill @s
