tag @s add FlintArrow
execute on origin unless items entity @s weapon.offhand minecraft:flint_and_steel run return fail
execute on origin run function bswt:enchantment/flint_ignite/nested_execute_0
execute as @s run data modify entity @s Fire set value 1000
particle minecraft:flame ^ ^ ^ 0 0 0 0.2 3
particle minecraft:item{item: {id: "minecraft:flint"}} ~ ~ ~ 0 0 0 0.1 3
execute on origin if items entity @s weapon.offhand minecraft:flint_and_steel[custom_data={firestarter: true}] run function bswt:enchantment/flint_ignite/nested_execute_1
