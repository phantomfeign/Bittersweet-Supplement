execute as @s[type=arrow, tag=bswt.FastArrow] run function bswt:enchantment/sharpshooter/arrow_tick
execute as @s[tag=bswt.cannotAttack] run function utility:weakness_tick
execute as @s[type=!#bswt:cant_transfer_fire, predicate=bswt:mob_effect/is_on_fire] run function bswt:mob_effect/fire/apply
execute as @s[tag=bswt.iceStatue, nbt=!{Health: 100.0f}] run function bswt:mob_effect/frostbite/ice_statue/shatter
execute as @s[type=block_display, tag=bswt.vinerySpore] run function bswt:enchantment/vinery/petal/tick
