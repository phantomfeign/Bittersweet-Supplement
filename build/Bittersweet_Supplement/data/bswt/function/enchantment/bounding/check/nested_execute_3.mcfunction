execute if score @s bswt.boundingJumps matches 0 if predicate bswt:player/input/jump run tag @s add canBoundingJump
execute if predicate bswt:player/input/jump run tag @s remove releasedJump
