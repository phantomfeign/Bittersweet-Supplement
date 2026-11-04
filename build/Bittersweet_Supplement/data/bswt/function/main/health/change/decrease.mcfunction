function bswt:main/health/change/get_max
scoreboard players set @s bswt.healthRecoveryTime 0
tag @s remove died_recently
scoreboard players set @s bswt.Adrenaline 0
execute if score @s bswt.maxHealth matches ..10 run return fail
scoreboard players remove @s bswt.maxHealth 2
function bswt:main/health/change/fix_hp
execute at @s run function bswt:main/health/fx/decrease
