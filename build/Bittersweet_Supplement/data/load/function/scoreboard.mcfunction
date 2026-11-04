scoreboard objectives add bswt.maxHealth dummy
scoreboard players add @a bswt.maxHealth 0
execute as @a store result score @s bswt.maxHealth run attribute @s minecraft:max_health get 1.0
scoreboard objectives add bswt.currentHealth health
scoreboard objectives add bswt.healthRecoveryTime dummy
scoreboard objectives add bswt.healthRecoverySeconds dummy
scoreboard objectives add bswt.playerDeaths deathCount
scoreboard objectives add bswt.timer dummy
scoreboard objectives add bswt.Math dummy
scoreboard players set #70 bswt.Math 70
scoreboard players set #90 bswt.Math 90
scoreboard players set #100 bswt.Math 100
scoreboard players set #150 bswt.Math 150
scoreboard objectives add bswt.projectileLifeSpan dummy
scoreboard objectives add bswt.Hunger food
scoreboard objectives add bswt.Adrenaline dummy
stopwatch create bswt_anvil_timer
scoreboard objectives add bswt.anvilUse minecraft.custom:minecraft.interact_with_anvil
scoreboard players set 0 bswt.anvilUse 0
scoreboard objectives add bswt.lacerationStacks dummy
scoreboard objectives add bswt.boundingJumps dummy
scoreboard objectives add bswt.playerJumps minecraft.custom:minecraft.jump
scoreboard objectives add bswt.arrowAge dummy
scoreboard objectives add bswt.arrowCount dummy
scoreboard objectives add bswt.weaknessTimer dummy
scoreboard objectives add bswt.fireTimer dummy
scoreboard objectives add bswt.frostbiteHealth dummy
scoreboard objectives add bswt.frostbiteTimer dummy
scoreboard objectives add bswt.viperTimer dummy
scoreboard objectives add bswt.vineryStacks dummy
scoreboard objectives add bswt.cd.Lunge dummy
