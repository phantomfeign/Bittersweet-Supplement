advancement revoke @s only temp:anvil/interact
stopwatch restart bswt_anvil_timer
experience set @s 100 levels
tag @s add bswt.usingAnvil
scoreboard players set @s bswt.anvilUse 0
function utility:anvil/prior_work
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:anvil replace minecraft:chipped_anvil
fill ~-2 ~-1 ~-2 ~2 ~2 ~2 minecraft:anvil replace minecraft:damaged_anvil
