execute as @s at @s run tag @s remove END_OF_LB
execute as @s at @s run tag @s remove SATU_ACTIVE
execute as @s at @s run tag @s add POST_LB
execute as @s at @s run effect give @s hunger 60 255 true
execute as @s at @s run effect give @s weakness 60 255 true
execute as @s at @s run effect give @s slowness 60 3 true
execute as @s at @s run attribute @s jump_strength base set 0
execute as @s at @s run schedule function ho9tocraft:skills/post_lb 60.5s append
