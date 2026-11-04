function utility:anvil/tick
function bswt:main/adrenaline/tick
function ticking_functions:tick_1s/cooldowns
execute if predicate bswt:enchantment/verdure/light if predicate bswt:enchantment/verdure/either_hand run function bswt:enchantment/verdure/tick
execute if entity @s[tag=bswt.vineryCaster] unless entity @e[type=minecraft:block_display, tag=bswt.vinerySpore, distance=..20] run tag @s remove bswt.vineryCaster
