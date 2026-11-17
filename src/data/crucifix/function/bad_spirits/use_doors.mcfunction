execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["a","1"]}
execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["a","2"]}
execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["a","3"]}
execute at @e[tag=spirit] run summon minecraft:block_display ~ ~ ~ {Tags:["a","4"]}

execute at @e[tag=spirit] run kill @e[tag=a,limit=2,sort=random,distance=..1]

execute as @e[tag=spirit] at @s if entity @e[tag=1,distance=..1] run scoreboard players set @s randDoor 1
execute as @e[tag=spirit] at @s if entity @e[tag=2,distance=..1] run scoreboard players set @s randDoor 2
execute as @e[tag=spirit] at @s if entity @e[tag=3,distance=..1] run scoreboard players set @s randDoor 3
execute as @e[tag=spirit] at @s if entity @e[tag=4,distance=..1] run scoreboard players set @s randDoor 4

execute at @e[tag=spirit] run kill @e[tag=a,distance=..2]

execute as @e[tag=spirit,scores={randDoor=4}] at @s run execute at @e[tag=door,sort=random,limit=1,distance=..15] run summon villager ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["open"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}

scoreboard players set @e[tag=spirit,scores={randDoor=4}] randDoor 0
scoreboard players set @e[tag=spirit,scores={waitDoor=..0}] waitDoor 100
