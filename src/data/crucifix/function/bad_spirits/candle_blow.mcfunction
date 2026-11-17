execute as @e[tag=spirit] at @s unless entity @e[tag=wp,distance=..2.5] store success score @s identifySpirit run fill ~5 ~4 ~5 ~-5 ~-4 ~-5 candle[candles=1,lit=false] replace candle[candles=1,lit=true]

execute at @e[scores={identifySpirit=1}] run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 2
execute at @e[scores={identifySpirit=1}] run playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 0

execute as @e[tag=spirit] at @s unless entity @e[tag=wp,distance=..5] store success score @s identifySpirit run fill ~3 ~4 ~3 ~-3 ~-4 ~-3 candle[candles=2,lit=false] replace candle[candles=2,lit=true]

execute at @e[scores={identifySpirit=1}] run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 2
execute at @e[scores={identifySpirit=1}] run playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 0

execute as @e[tag=spirit] at @s unless entity @e[tag=wp,distance=..4.5] store success score @s identifySpirit run fill ~2 ~4 ~2 ~-2 ~-4 ~-2 candle[candles=3,lit=false] replace candle[candles=3,lit=true]

execute at @e[scores={identifySpirit=1}] run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 2
execute at @e[scores={identifySpirit=1}] run playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 0

execute as @e[tag=spirit] at @s unless entity @e[tag=wp,distance=..4] store success score @s identifySpirit run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 candle[candles=4,lit=false] replace candle[candles=4,lit=true]

execute at @e[scores={identifySpirit=1}] run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 2
execute at @e[scores={identifySpirit=1}] run playsound minecraft:entity.allay.item_thrown ambient @a ~ ~ ~ 1 0
