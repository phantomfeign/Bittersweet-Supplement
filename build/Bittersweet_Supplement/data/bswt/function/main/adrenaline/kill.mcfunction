advancement revoke @s only temp:adrenaline/kill
scoreboard players add @s bswt.Adrenaline 5
execute as @s[tag=bswt.Rampage] run scoreboard players add @s bswt.Adrenaline 5
execute as @s[tag=bswt.Rampage] run return run effect give @s minecraft:regeneration 4 0 true
execute store result score #contestedRoll Adrenaline run random value 0..100
execute if score @s bswt.Adrenaline <= #contestedRoll Adrenaline run return fail
effect give @s minecraft:regeneration 1 2 true
effect give @s minecraft:regeneration 4 0 true
