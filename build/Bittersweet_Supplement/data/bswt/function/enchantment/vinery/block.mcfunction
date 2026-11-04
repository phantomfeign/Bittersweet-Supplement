playsound minecraft:item.shield.block player @a ~ ~ ~ 3 2
playsound minecraft:block.wood.break player @a ~ ~ ~ 3 1
advancement revoke @s only temp:enchantment/vinery/block
execute unless score @s bswt.vineryStacks matches 5.. run scoreboard players add @s bswt.vineryStacks 1
execute if score @s bswt.vineryStacks matches ..4 run function bswt:enchantment/vinery/block/nested_execute_0
