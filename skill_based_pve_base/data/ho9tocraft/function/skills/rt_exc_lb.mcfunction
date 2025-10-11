# EXC LIMIT BREAK Retop
execute as @e[tag=SEMIPRIMED,predicate=ho9tocraft:ex1_exc/semiprimed] at @s run tag @s remove SEMIPRIMED
execute as @e[predicate=ho9tocraft:ex1_exc/semiprimed,tag=END_OF_LB] at @s run function ho9tocraft:skills/activate_lb
