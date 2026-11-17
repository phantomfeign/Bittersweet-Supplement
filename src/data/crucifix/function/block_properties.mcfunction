execute at @e[tag=crossArmorStand] run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:stick"},transformation:[0.5878178672f,0.5878178672f,0f,0.0228178575f,-0.5922019292f,0.5922019292f,0f,0.4753268991f,0f,0f,1f,-0.0199999995f,0f,0f,0f,1f],Tags:["crossDisplay"]},{id:"minecraft:item_display",item:{id:"minecraft:stick"},transformation:[0.4885942112f,-0.4885942112f,0f,-0.0145906425f,0.4922382436f,0.4922382436f,0f,0.6737097116f,0f,0f,1f,-0.0287499995f,0f,0f,0f,1f],Tags:["crossDisplay","crucifix"]}],Tags:["crossDisplay","cfx"]}

execute at @e[tag=crossArmorStand] run tp @e[tag=crossDisplay,distance=..0.1] ^ ^1 ^-0.47 ~ 0

kill @e[tag=crossArmorStand]

# break block

execute as @e[tag=cfx] at @s if block ^ ^ ^-1 air run summon item ~ ~ ~ {Item:{id:"minecraft:armor_stand",count:1,components:{"minecraft:custom_name":{"italic":false,"text":"Crucifix"},"minecraft:entity_data":{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Tags:["crossArmorStand"]}}}}
execute as @e[tag=cfx] at @s if block ^ ^ ^-1 air run playsound minecraft:block.bamboo.break block @a ~ ~ ~ 1 0
execute as @e[tag=crossDisplay] at @s if block ^ ^ ^-1 air run kill @s

# reactions

execute as @e[tag=crucifix,tag=!666] run data merge entity @s {transformation:{translation:[-0.014590642f,0.6737096f,-0.028749999]}}

execute as @e[tag=666] run data merge entity @s {transformation:{translation:[-0.014590642f,0.3737096f,-0.028749999]}}