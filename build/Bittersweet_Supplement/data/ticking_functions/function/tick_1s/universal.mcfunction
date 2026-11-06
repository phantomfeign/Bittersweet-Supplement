execute as @s[tag=bswt.lacerated] run function bswt:enchantment/laceration/tick
execute as @s[tag=bswt.timed_projectile] run function utility:projectile_tick
execute as @s[tag=bswt.OnFire] run function bswt:mob_effect/fire/tick
execute as @s[type=#bswt:spawn_check, tag=!bswt.spawnChecked] run function bswt:mob_adjustment/universal/filter
