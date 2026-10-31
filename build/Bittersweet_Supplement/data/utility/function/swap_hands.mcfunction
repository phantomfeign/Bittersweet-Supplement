summon minecraft:item_display ~ ~ ~ {Tags: ["bswt.swap_hands"]}
item replace entity @e[limit=1, sort=nearest, type=item_display, tag=bswt.swap_hands] container.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[limit=1, sort=nearest, type=item_display, tag=bswt.swap_hands] container.0
kill @e[limit=1, sort=nearest, type=item_display, tag=bswt.swap_hands]
