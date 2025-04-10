execute as @s at @s if score @s clickHB1 matches 1.. anchored eyes rotated ~ 0 positioned ^ ^ ^2 unless entity @e[distance=..2,team=ENEMY] run function ho9tocraft:skills/jobactions/01_pld/item_fast_blade
execute as @s at @s if score @s clickHB1 matches 1.. anchored eyes rotated ~ 0 positioned ^ ^ ^2 if entity @e[distance=..2,team=ENEMY] run function ho9tocraft:skills/jobactions/01_pld/item_fast_blade
# TODO: owner取得 -> damage_amount決定 -> target取得
execute as @s at @s if score @s clickHB1 matches 1.. anchored eyes rotated ~ 0 positioned ^ ^ ^2 if entity @e[distance=..2,team=ENEMY] run data merge storage ffxiv:damage_path {owner:[I;0,0,0,0],damage_amount:0,target:[I;0,0,0,0]}
execute as @s at @s if score @s clickHB1 matches 1.. anchored eyes rotated ~ 0 positioned ^ ^ ^2 if entity @e[distance=..2,team=ENEMY] run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s at @s if score @s clickHB1 matches 1.. anchored eyes rotated ~ 0 positioned ^ ^ ^2 if entity @e[distance=..2,team=ENEMY] run data modify storage ffxiv:damage_path damage_amount set value 12
execute as @s at @s if score @s clickHB1 matches 1.. anchored eyes rotated ~ 0 positioned ^ ^ ^2 as @e[distance=..2,team=ENEMY,sort=nearest,limit=1] run data modify storage ffxiv:damage_path target set from entity @s UUID
execute as @s at @s if score @s clickHB1 matches 1.. anchored eyes rotated ~ 0 positioned ^ ^ ^2 as @e[distance=..2,team=ENEMY,sort=nearest,limit=1] run function ho9tocraft:skills/jobactions/damage_physical with storage ffxiv:damage_path
