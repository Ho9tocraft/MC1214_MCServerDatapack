execute as @e[tag=eff_sprint,tag=!in_battle] at @s run effect clear @s speed
execute as @e[tag=eff_sprint,tag=!in_battle] at @s run effect give @s speed infinite 0
execute as @e[tag=eff_sprint,tag=!in_battle] at @s run tag @s remove eff_sprint
