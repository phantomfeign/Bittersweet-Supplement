execute store result storage bswt.laceration Severity int 1 run scoreboard players get @s bswt.lacerationStacks
function enchantment:laceration/damage with storage bswt.laceration
scoreboard players remove @s bswt.lacerationStacks 1
execute if score @s bswt.lacerationStacks matches ..0 run function bswt:enchantment/laceration/tick/nested_execute_0
