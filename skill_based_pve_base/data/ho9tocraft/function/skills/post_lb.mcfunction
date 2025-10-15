execute as @e[tag=POST_LB,predicate=!ho9tocraft:limit_break_burn_out] at @s run effect give @s saturation 60 0 false
execute as @e[tag=POST_LB,predicate=!ho9tocraft:limit_break_burn_out] at @s run attribute @s jump_strength base reset
execute as @e[tag=POST_LB,predicate=!ho9tocraft:limit_break_burn_out] at @s run tag @s remove POST_LB
