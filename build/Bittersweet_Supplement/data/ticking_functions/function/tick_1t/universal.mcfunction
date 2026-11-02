execute as @s[type=arrow, tag=bswt.FastArrow] run function bswt:enchantment/sharpshooter/arrow_tick
execute as @s[tag=bswt.cannotAttack] run function utility:weakness_tick
execute as @s[type=!#bswt:cant_transfer_fire, predicate=bittersweet_functions:is_on_fire] at @s run function bswt:mob_effect/fire/apply
execute as @e[tag=bswt.iceStatue, nbt=!{Health: 100.0f}] at @s run function bswt:mob_effect/frostbite/ice_statue/shatter
