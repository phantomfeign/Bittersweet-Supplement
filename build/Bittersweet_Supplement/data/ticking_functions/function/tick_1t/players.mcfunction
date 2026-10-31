execute if predicate bswt:enchantment/infinity unless items entity @s saddle minecraft:arrow run function utility:ghost_arrow/check_infinity
execute if predicate bswt:enchantment/overload unless items entity @s saddle minecraft:arrow run function utility:ghost_arrow/check_overload
execute unless predicate bswt:enchantment/infinity unless predicate bswt:enchantment/overload if items entity @s saddle minecraft:arrow run function utility:ghost_arrow/remove
execute if predicate bswt:enchantment/hefty run function utility:swap_hands
