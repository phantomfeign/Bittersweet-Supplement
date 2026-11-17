execute if items entity @s container.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run give @s minecraft:arrow
execute if items entity @s container.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run clear @s minecraft:arrow[minecraft:equippable={slot:"saddle"}] 1

execute if items entity @s container.* minecraft:arrow[minecraft:equippable={slot:"saddle"}] run return run function bswt:misc/modify_items/process/arrow
