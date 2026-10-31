execute on attacker store result score #attacker_x bswt.Math run data get entity @s Pos[0] 1000
execute on attacker store result score #attacker_y bswt.Math run data get entity @s Pos[1] 1000
execute on attacker store result score #attacker_z bswt.Math run data get entity @s Pos[2] 1000
execute store result score #victim_x bswt.Math run data get entity @s Pos[0] 1000
execute store result score #victim_y bswt.Math run data get entity @s Pos[1] 1000
execute store result score #victim_z bswt.Math run data get entity @s Pos[2] 1000
scoreboard players operation #attacker_x bswt.Math -= #victim_x bswt.Math
scoreboard players operation #attacker_y bswt.Math -= #victim_y bswt.Math
scoreboard players operation #attacker_z bswt.Math -= #victim_z bswt.Math
execute store result storage bswt:hook.pull MotionX double 0.0004 run scoreboard players get #attacker_x bswt.Math
execute store result storage bswt:hook.pull MotionY double 0.0003 run scoreboard players get #attacker_y bswt.Math
execute store result storage bswt:hook.pull MotionZ double 0.0004 run scoreboard players get #attacker_z bswt.Math
function bswt:enchantment/hooking/pull/nested_macro_0 with storage bswt:hook.pull
playsound minecraft:item.spear.lunge_1 player @a ~ ~ ~ 4 2
ride @s dismount
effect give @s minecraft:weakness 1 255 true
scoreboard players add @s bswt.weaknessTimer 7
tag @s add bswt.cannotAttack
