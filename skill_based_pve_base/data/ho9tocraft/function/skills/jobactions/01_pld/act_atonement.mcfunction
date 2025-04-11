execute as @s at @s if score @s clickHB1 matches 1.. unless entity @e[distance=..3,team=ENEMY] run function ho9tocraft:skills/jobactions/01_pld/item_fast_blade
execute as @s at @s if score @s clickHB1 matches 1.. unless entity @e[distance=..3,team=ENEMY] run scoreboard players set @s expireCombo 0
execute as @s at @s if score @s clickHB1 matches 1.. if entity @e[distance=..3,team=ENEMY] run function ho9tocraft:skills/jobactions/01_pld/item_supplication
execute as @s at @s if score @s clickHB1 matches 1.. if entity @e[distance=..3,team=ENEMY] run scoreboard players set @s expireCombo 1200
execute as @s at @s if score @s clickHB1 matches 1.. run tag @s add WS_Used
# TODO: owner取得 -> damage_amount決定 -> target取得
execute as @s at @s if score @s clickHB1 matches 1.. if entity @e[distance=..3,team=ENEMY] run data merge storage ffxiv:damage_path {owner:[I;0,0,0,0],damage_amount:0,target:[I;0,0,0,0]}
execute as @s at @s if score @s clickHB1 matches 1.. if entity @e[distance=..3,team=ENEMY] run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s at @s if score @s clickHB1 matches 1.. if entity @e[distance=..3,team=ENEMY] run data modify storage ffxiv:damage_path damage_amount set value 23
execute as @s at @s if score @s clickHB1 matches 1.. as @e[distance=..3,team=ENEMY,sort=nearest,limit=1] run data modify storage ffxiv:damage_path target set from entity @s UUID
execute as @s at @s if score @s clickHB1 matches 1.. as @e[distance=..3,team=ENEMY,sort=nearest,limit=1] run function ho9tocraft:skills/jobactions/damage_physical with storage ffxiv:damage_path
