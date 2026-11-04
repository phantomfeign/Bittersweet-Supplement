$execute at @s anchored eyes run summon snowball ^ ^ ^ {Tags:["bswt.projectileMotionSnowball","bswt.newSnowball",$(Tags)]}
$execute at @s anchored eyes run summon marker ^$(X) ^$(Y) ^$(Z) {Tags:["bswt.snowballTarget"]}
execute as @e[sort=nearest, limit=1, tag=bswt.snowballTarget] run function utility:spawn_snowball/nested_execute_0
execute as @e[sort=nearest, limit=1, tag=bswt.newSnowball] run function utility:spawn_snowball/nested_execute_1
