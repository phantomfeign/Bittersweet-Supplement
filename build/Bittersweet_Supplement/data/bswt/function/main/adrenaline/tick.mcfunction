execute as @s[tag=!bswt.Rampage] if score @s bswt.Adrenaline matches 100.. run function bswt:main/adrenaline/rampage/start
execute as @s[tag=bswt.Rampage] run return run function bswt:main/adrenaline/rampage/tick
execute if entity @e[type=#bswt.hostiles, distance=..5] run return run scoreboard players add @s bswt.Adrenaline 1
execute if entity @e[type=#bswt.hostiles, distance=..10] run return fail
execute if score @s bswt.Adrenaline matches ..10 run return run scoreboard players set @s bswt.Adrenaline 10
scoreboard players operation @s bswt.Adrenaline *= #90 bswt.Math
scoreboard players operation @s bswt.Adrenaline /= #100 bswt.Math
