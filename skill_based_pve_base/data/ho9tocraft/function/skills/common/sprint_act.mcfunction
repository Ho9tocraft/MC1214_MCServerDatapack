execute as @s at @s if score @s clickHB8 matches 1.. run function ho9tocraft:skills/common/sprint_item
execute as @s at @s if score @s clickHB8 matches 1.. run tag @s add eff_sprint
execute as @s at @s if score @s clickHB8 matches 1.. run effect clear @s speed
execute as @s at @s if score @s clickHB8 matches 1.. run schedule function ho9tocraft:skills/common/sprint_post 20s append
execute as @s[tag=!in_battle] at @s if score @s clickHB8 matches 1.. run effect give @s speed 20 2
execute as @s[tag=in_battle] at @s if score @s clickHB8 matches 1.. run effect give @s speed 10 2
