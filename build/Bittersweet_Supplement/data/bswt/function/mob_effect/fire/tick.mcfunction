scoreboard players remove @s bswt.fireTimer 1
damage @s 1 minecraft:on_fire
execute if block ~ ~ ~ minecraft:water run function bswt:mob_effect/fire/remove
execute if score @s bswt.fireTimer matches ..0 run function bswt:mob_effect/fire/remove
