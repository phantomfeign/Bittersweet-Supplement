effect give @s invisibility infinite
data merge entity @s {NoAI: 1b, Silent: 1b, DeathLootTable: "bswt:empty"}
tp @s ~ -100 ~
execute as @s[type=!minecraft:slime] run kill @s
execute as @s[type=minecraft:slime] run function utility:delete_self/nested_execute_0
