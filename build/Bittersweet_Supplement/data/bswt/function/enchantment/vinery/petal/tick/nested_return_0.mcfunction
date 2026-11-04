scoreboard players remove @s bswt.projectileLifeSpan 1
execute unless entity @e[type=!#bswt:nonliving_entity, type=!#bswt:is_passive, tag=!bswt.vineryCaster, distance=..10] run scoreboard players set @s bswt.projectileLifeSpan 0
tp @s ^ ^ ^0.5
