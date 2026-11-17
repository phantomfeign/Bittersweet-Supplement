execute at @e[tag=crucifix,tag=!piglin] if dimension minecraft:the_nether run tag @e[type=minecraft:zombified_piglin,distance=..20,limit=1,sort=random] add attractPiglin
execute as @e[tag=attractPiglin] at @s run data merge entity @s {Silent:1b}
execute as @e[tag=attractPiglin] at @s run damage @s 0 minecraft:generic by @a[distance=..25,limit=1,sort=nearest]
execute as @e[tag=crucifix,tag=!piglin] at @s if dimension minecraft:the_nether run tag @s add piglin
tag @e[tag=attractPiglin] remove attractPiglin
execute as @e[type=zombified_piglin,nbt={Silent:1b}] at @s run data merge entity @s {Silent:0b}
 
