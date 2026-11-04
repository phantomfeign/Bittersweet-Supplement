function bswt:main/health/change/get_max
scoreboard players set @s bswt.healthRecoveryTime 0
execute if score @s bswt.maxHealth matches 60.. run return fail
scoreboard players add @s bswt.maxHealth 2
function bswt:main/health/change/fix_hp
execute at @s run function bswt:main/health/fx/increase
