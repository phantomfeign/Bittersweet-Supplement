advancement revoke @s only temp:adrenaline/hurt
scoreboard players add @s bswt.Adrenaline 2
execute as @s[tag=bswt.Rampage] run scoreboard players add @s bswt.Adrenaline 1
execute store result score #contestedRoll Adrenaline run random value 0..1000
execute if score @s bswt.Adrenaline <= #contestedRoll Adrenaline run effect give @s minecraft:regeneration 1 2 true
