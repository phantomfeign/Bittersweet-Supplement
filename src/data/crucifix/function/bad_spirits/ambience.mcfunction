execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["b","1"]}
execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["b","2"]}
execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["b","3"]}
execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["b","4"]}

execute at @e[tag=spirit] run kill @e[tag=b,limit=3,sort=random,distance=..1]

execute as @e[tag=spirit] at @s if entity @e[tag=b,tag=1,distance=..1] run scoreboard players set @s randScream 1
execute as @e[tag=spirit] at @s if entity @e[tag=b,tag=2,distance=..1] run scoreboard players set @s randScream 2
execute as @e[tag=spirit] at @s if entity @e[tag=b,tag=3,distance=..1] run scoreboard players set @s randScream 3
execute as @e[tag=spirit] at @s if entity @e[tag=b,tag=4,distance=..1] run scoreboard players set @s randScream 4

execute at @e[tag=spirit] run kill @e[tag=b,distance=..2]

execute as @e[tag=spirit,scores={randScream=4}] at @s run playsound minecraft:ambient.soul_sand_valley.mood hostile @a ~ ~ ~ 0.6 1.55
scoreboard players set @e[tag=spirit,scores={waitScream=..0}] waitScream 200
