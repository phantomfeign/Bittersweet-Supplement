execute store result score @s bswt.maxHealth run attribute @s minecraft:max_health get 1
execute store result score #bswt_bronze_helmet bswt.Math run attribute @s minecraft:max_health modifier value get bswt:bronze_helmet 1
scoreboard players operation @s bswt.maxHealth -= #bswt_bronze_helmet bswt.Math
execute store result score #bswt_bronze_chestplate bswt.Math run attribute @s minecraft:max_health modifier value get bswt:bronze_chestplate 1
scoreboard players operation @s bswt.maxHealth -= #bswt_bronze_chestplate bswt.Math
execute store result score #bswt_bronze_leggings bswt.Math run attribute @s minecraft:max_health modifier value get bswt:bronze_leggings 1
scoreboard players operation @s bswt.maxHealth -= #bswt_bronze_leggings bswt.Math
execute store result score #bswt_bronze_boots bswt.Math run attribute @s minecraft:max_health modifier value get bswt:bronze_boots 1
scoreboard players operation @s bswt.maxHealth -= #bswt_bronze_boots bswt.Math
