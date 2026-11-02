execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadAmmo: 0b, bswt.overloadLoaded: true}] run item modify entity @s weapon.mainhand bswt:enchantment/overload/loaded/false
execute if items entity @s weapon.mainhand crossbow[custom_data~{bswt.overloadLoaded: true}] run return run advancement revoke @s only temp:enchantment/overload/use
item modify entity @s weapon.mainhand bswt:enchantment/overload/loaded/false
advancement revoke @s only temp:enchantment/overload/use
execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id: "minecraft:arrow", components: {equippable: {slot: "saddle", equip_sound: "minecraft:intentionally_empty"}}}]] if predicate bswt:enchantment/overload run item modify entity @s weapon.mainhand utility:load_arrow
execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id: "minecraft:arrow"}]] if predicate bswt:enchantment/overload run return run function bswt:enchantment/overload/load_crossbow/call
execute if items entity @s weapon.mainhand crossbow[minecraft:charged_projectiles=[{id: "minecraft:arrow", components: {"minecraft:intangible_projectile": {}}}]] if predicate bswt:enchantment/overload run return run function bswt:enchantment/overload/load_crossbow/call
