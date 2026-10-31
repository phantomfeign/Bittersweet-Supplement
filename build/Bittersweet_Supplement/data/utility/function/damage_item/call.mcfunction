data remove storage bswt.durability.damage item_info
$data modify storage bswt.durability.damage item_info set from entity @s $(slot)
$data modify storage bswt.durability.damage modified_slot set value $(modified_slot)
scoreboard players set #damage bswt.Math 0
execute if data storage bswt.durability.damage item_info.components."minecraft:damage" run execute store result score #damage bswt.Math run data get storage bswt.durability.damage item_info.components."minecraft:damage"
$scoreboard players add #damage bswt.Math $(dmg)
$scoreboard players remove #damage bswt.Math $(heal)
scoreboard players set #max_durability bswt.Math 1
execute store result score #max_durability bswt.Math run data get storage bswt.durability.damage item_info.components."minecraft:max_damage"
execute if score #max_durability bswt.Math matches 1.. if score #damage bswt.Math >= #max_durability bswt.Math run playsound minecraft:entity.item.break player @a ~ ~ ~ 4
$execute if score #max_durability bswt.Math matches 1.. if score #damage bswt.Math >= #max_durability bswt.Math run return run item replace entity @s $(modified_slot) with minecraft:air
execute store result storage bswt.durability.damage damage int 1 run scoreboard players get #damage bswt.Math
function utility:damage_item/call/nested_macro_0 with storage bswt.durability.damage
