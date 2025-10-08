execute as @e[team=RED,tag=Retop_RapidBlade,scores={job_id=100}] at @s run teleport @s @e[type=armor_stand,sort=nearest,limit=1,tag=Exc_RapidBlade,team=RED]
execute as @e[team=BLU,tag=Retop_RapidBlade,scores={job_id=100}] at @s run teleport @s @e[type=armor_stand,sort=nearest,limit=1,tag=Exc_RapidBlade,team=BLU]
execute as @e[type=armor_stand,tag=Exc_RapidBlade,sort=nearest,limit=1] at @s run kill @s
execute as @e[tag=Retop_RapidBlade] at @s run tag @s remove Retop_RapidBlade
