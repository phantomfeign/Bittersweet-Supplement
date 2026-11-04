advancement revoke @s only bswt:main/health/drink_ichor
function bswt:main/health/fx/debuffs
function bswt:main/health/fx/ichor
execute store result score @s bswt.maxHealth run attribute @s minecraft:max_health get 1.0
execute unless score @s bswt.maxHealth matches 20.. run scoreboard players set @s bswt.maxHealth 18
function bswt:main/health/change/fix_hp
function bswt:main/health/change/increase
