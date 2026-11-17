# mobs

scoreboard players set @e[tag=crucifix] crossTurn 0
execute as @e[tag=crucifix] at @s if entity @e[type=#crucifix:spiritually_charged_entities,distance=..14] run scoreboard players set @s crossTurn 1
execute as @e[tag=crucifix] at @s if dimension minecraft:the_nether run scoreboard players set @s crossTurn 1
execute as @e[tag=crucifix] at @s if entity @e[tag=spirit,distance=..14] run scoreboard players set @s crossTurn 1

execute as @e[tag=crucifix,scores={crossTurn=1}] at @s unless entity @s[tag=666] run playsound minecraft:ui.toast.out ambient @a ~ ~ ~ 10 0.77
execute as @e[tag=crucifix,scores={crossTurn=1}] run tag @s add 666
execute as @e[tag=crucifix,scores={crossTurn=0}] run tag @s remove 666

execute as @e[tag=crucifix] at @s run effect give @a[distance=..5] minecraft:resistance 5 1 true