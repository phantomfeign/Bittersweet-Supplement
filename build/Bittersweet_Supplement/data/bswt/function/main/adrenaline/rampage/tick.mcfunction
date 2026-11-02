scoreboard players remove @s bswt.Adrenaline 10
playsound minecraft:block.copper_bulb.turn_off player @s ~ ~ ~ 1 1
effect give @s minecraft:strength 2 0 true
effect give @s minecraft:resistance 2 0 true
execute if score @s bswt.Adrenaline matches 1.. run function bswt:main/adrenaline/rampage/tick/nested_execute_0
scoreboard players set @s bswt.Adrenaline 0
tag @s remove bswt.Rampage
particle minecraft:trial_omen ~ ~ ~ 0.2 1 0.2 0 5
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.2 1 0.2 0.1 5
playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 10 2
playsound minecraft:block.conduit.attack.target player @a ~ ~ ~ 10 1
