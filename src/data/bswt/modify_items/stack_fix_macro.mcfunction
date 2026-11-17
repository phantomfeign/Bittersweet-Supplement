$execute if items entity @s container.* $(item)[!max_stack_size=64] run give @s $(item)[max_stack_size=64]
$execute if items entity @s container.* $(item)[!max_stack_size=64] run clear @s $(item)[!max_stack_size=64] 1
