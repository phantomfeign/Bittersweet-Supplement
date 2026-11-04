scoreboard players add @s bswt.healthRecoverySeconds 1
execute if score @s bswt.healthRecoverySeconds matches 60.. run scoreboard players add @s bswt.healthRecoveryTime 1
execute if score @s bswt.healthRecoverySeconds matches 60.. run playsound minecraft:block.amethyst_block.step player @s ~ ~ ~ 1 2
execute if score @s bswt.healthRecoverySeconds matches 60.. run title @s actionbar [{text: "Recovery Period: ", bold: false, color: "white"}, {score: {name: "*", objective: "bswt.healthRecoveryTime"}}, {text: "/15", bold: false, color: "white"}]
execute if score @s bswt.healthRecoverySeconds matches 60.. run scoreboard players remove @s bswt.healthRecoverySeconds 60
execute if score @s bswt.healthRecoveryTime matches 15.. unless score @s bswt.maxHealth matches 20.. run function bswt:main/health/change/increase
