function crucifix:block_properties
function crucifix:conditions

function crucifix:bad_spirits/candle_blow

# craft Crucifix

execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:stick[minecraft:count=2] if items entity @e[distance=..0.5] contents minecraft:iron_nugget if items entity @e[distance=..0.5] contents minecraft:string run function crucifix:give_cross
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:stick[minecraft:count=2] if items entity @e[distance=..0.5] contents minecraft:iron_nugget if items entity @e[distance=..0.5] contents minecraft:string run playsound minecraft:block.shelf.place block @a ~ ~ ~ 1 0.7
execute as @e[type=minecraft:item] at @s if items entity @s contents minecraft:stick[minecraft:count=2] if items entity @e[distance=..0.5] contents minecraft:iron_nugget if items entity @e[distance=..0.5] contents minecraft:string run kill @e[type=item,distance=..0.5]


# identifiers
execute at @a rotated ~ 0 if block ~ ~ ~ #doors unless block ^ ^ ^0.6 #doors unless entity @e[tag=door,distance=..2] run summon minecraft:block_display ~ ~ ~ {Tags:["door"]}
execute as @a at @s if block ~ ~ ~ #minecraft:beds unless entity @e[tag=bed,distance=..2] run summon minecraft:block_display ~ ~ ~ {Tags:["bed"]}

execute as @e[tag=door] at @s unless block ~ ~ ~ #doors run kill @s
execute as @e[tag=bed] at @s unless block ~ ~ ~ #beds run kill @s

# spirit conds
execute as @e[tag=spirit] at @s positioned as @p[distance=..2,sort=nearest,limit=1] unless entity @e[tag=wp,distance=..3] run damage @p[distance=..2] 3 minecraft:generic by @s

execute as @a at @s if entity @e[type=#crucifix:spiritually_charged_entities,distance=..10] run scoreboard players add @s spiritual_charge 1

scoreboard players add @a[scores={spiritual_charge=2500..}] charge 1
scoreboard players set @a[scores={spiritual_charge=2500..}] spiritual_charge 0

# never leave house
execute as @e[tag=spirit] at @s if entity @e[tag=door,distance=..1.2] run execute at @e[tag=bed] run tp @s ~ ~ ~
execute as @e[tag=spirit] at @s positioned ~ ~-1 ~ if entity @e[tag=door,distance=..1.2] run execute at @e[tag=bed,sort=nearest,limit=1,distance=..20] run tp @s ~ ~ ~


# create spirits

execute as @a[nbt={SleepTimer:50s},scores={charge=1..}] at @s run summon bat ~ ~-0.2 ~ {Silent:1b,Invulnerable:1b,Tags:["spirit"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}

execute as @a[nbt={SleepTimer:50s},scores={charge=1..}] at @s run scoreboard players remove @s charge 1

# pray

function crucifix:prayers/toclean_soul
scoreboard players set @a[scores={prayTick=300..}] prayTick 0

scoreboard players set @a pray 0

execute as @a at @s rotated ~ ~-90 positioned ^ ^1 ^1 if entity @e[tag=cfx,distance=..1.2] run execute rotated ~ 0 positioned ^ ^ ^1 if entity @e[tag=cfx,distance=..1.3] run execute at @s positioned ^ ^3 ^-1 if entity @e[tag=cfx,distance=..1] run scoreboard players set @s pray 1

stopsound @a[scores={pray=0}] ambient minecraft:music_disc.far
scoreboard players set @a[scores={pray=0}] prayTick 0
execute at @e[scores={pray=1,prayTick=200}] run effect give @e[type=#crucifix:spiritually_charged_entities,distance=..10] slowness 20 30 true
execute at @e[scores={pray=1,prayTick=200}] run execute as @e[type=#crucifix:spiritually_charged_entities,distance=..10] at @s facing entity @p eyes rotated ~180 0 run tp @s ^ ^3 ^20
execute at @a[scores={pray=1}] run playsound minecraft:music_disc.far ambient @a[scores={pray=1}] ~ ~ ~ 0.3 0.77
scoreboard players add @a[scores={pray=1}] prayTick 1

# doors moving

execute as @e[tag=spirit] run scoreboard players remove @s waitDoor 1
execute as @e[tag=spirit] unless score @s waitDoor matches 1.. run function crucifix:bad_spirits/use_doors

execute as @e[tag=open] at @s unless block ~ ~ ~ #minecraft:doors[open=false] run tp @s ~ ~-600 ~


# screamer

execute as @e[tag=spirit] run scoreboard players remove @s waitScream 1
execute as @e[tag=spirit] unless score @s waitScream matches 1.. run function crucifix:bad_spirits/ambience

# water

function crucifix:water/water_purified
execute at @e[tag=wp] if entity @e[tag=spirit,distance=..3.5] run particle minecraft:smoke ~ ~ ~ 1 1 1 0.05 5 normal

# nether

execute at @e[tag=crucifix] if dimension minecraft:the_nether run playsound minecraft:block.sculk_shrieker.shriek ambient @a ~ ~ ~ 0.05 0
execute at @e[tag=cfx] if dimension minecraft:the_nether run particle flame ~ ~.5 ~ 0.25 0.25 0.25 0 1 normal

function crucifix:piglin_rage
 
