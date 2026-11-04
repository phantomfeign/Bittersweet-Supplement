execute if predicate bswt:chance/10 run return fail
execute if predicate bswt:enchantment/verdure/mainhand run function utility:damage_item/call {heal: 1, dmg: 0, modified_slot: "weapon.mainhand", slot: "SelectedItem"}
execute if predicate bswt:enchantment/verdure/offhand run function utility:damage_item/call {heal: 1, dmg: 0, modified_slot: "weapon.offhand", slot: "equipment.offhand"}
