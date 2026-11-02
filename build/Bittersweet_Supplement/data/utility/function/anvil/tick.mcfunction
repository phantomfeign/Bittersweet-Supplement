execute unless stopwatch bswt_anvil_timer ..20 run tag @a[tag=bswt.usingAnvil] remove bswt.usingAnvil
execute as @s[tag=bswt.usingAnvil] run experience set @s 100 levels
execute as @s[tag=!bswt.usingAnvil] run function utility:anvil/tick/nested_execute_0
