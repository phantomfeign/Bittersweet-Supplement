advancement revoke @s only bswt:temp/enchantment/overload/shot
execute unless predicate bswt:enchantment/overload run return run say fail
item modify entity @s weapon.mainhand bswt:enchantment/overload/loaded/false
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo:1b}] run function bswt:enchantment/overload/shot/nested_execute_0
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo:2b}] run function bswt:enchantment/overload/shot/nested_execute_1
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo:3b}] run function bswt:enchantment/overload/shot/nested_execute_2
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo:4b}] run function bswt:enchantment/overload/shot/nested_execute_3
