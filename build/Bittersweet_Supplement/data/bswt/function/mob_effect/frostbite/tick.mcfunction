particle minecraft:snowflake ~ ~1 ~ 0.5 0.5 0.5 0 3
particle minecraft:block{block_state: "minecraft:blue_ice"} ~ ~1 ~ 0 0 0 0 10
playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 3 2
execute store result score @s bswt.frostbiteHealth run data get entity @s Health
execute if entity @s[type=!#bswt:cant_ice_statue] if score @s bswt.frostbiteHealth matches 0..6 run function bswt:mob_effect/frostbite/ice_statue/become
execute if entity @s[type=!player, type=!#bswt:is_passive] run damage @s 1.5 minecraft:freeze
execute if entity @s[type=player] run damage @s 0.5 minecraft:freeze
damage @s 0.5 minecraft:freeze
scoreboard players remove @s bswt.frostbiteTimer 1
execute if score @s bswt.frostbiteTimer matches ..0 run function bswt:mob_effect/frostbite/remove
