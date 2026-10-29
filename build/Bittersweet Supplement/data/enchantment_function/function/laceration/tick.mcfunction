execute store result storage bswt.laceration Severity int 1 run scoreboard players get @s bswt.lacerationStacks
function enchantment_function:laceration/damage with storage bswt.laceration
scoreboard players remove @s bswt.lacerationStacks 1
execute if score @s bswt.lacerationStacks matches ..0 run function enchantment_function:laceration/tick/nested_execute_0
