data modify entity @s Fire set value 0
execute if block ~ ~ ~ minecraft:water run return run function bswt:mob_effect/fire/end
execute as @s unless score @s bswt.fireTimer matches ..0 run scoreboard players add @s bswt.fireTimer 2
execute as @s unless score @s bswt.fireTimer matches 1.. run scoreboard players set @s bswt.fireTimer 8
tag @s add bswt.OnFire
data modify entity @s HasVisualFire set value 1b
execute if score @s bswt.frostbiteTimer matches 1.. run function bswt:mob_effect/frostbite/remove
