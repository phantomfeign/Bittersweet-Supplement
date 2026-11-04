say call
execute if score @s bswt.vineryStacks matches ..0 run return fail
execute if score @s bswt.vineryStacks matches 4.. run scoreboard players set @s bswt.vineryStacks 4
execute if score @s bswt.vineryStacks matches 1 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 2 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 2 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 3 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 3 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 3 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 4 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 4 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 4 run function bswt:enchantment/vinery/petal/summon
execute if score @s bswt.vineryStacks matches 4 run function bswt:enchantment/vinery/petal/summon
tag @s add bswt.vineryCaster
scoreboard players set @s bswt.vineryStacks 0
