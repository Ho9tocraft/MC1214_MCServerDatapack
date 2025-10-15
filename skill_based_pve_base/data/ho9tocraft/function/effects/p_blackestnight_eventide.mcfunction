# Counter Blast
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER_2 run attribute @s attack_damage get 1.0
execute as @s[scores={job_id=3}] at @s run scoreboard players add @s DAMAGE_HELPER_2 2
execute as @s[scores={job_id=3}] at @s run scoreboard players operation @s DAMAGE_HELPER += @s DAMAGE_HELPER_2
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s DAMAGE_HELPER_2 0
# Damage Owner Check
execute as @s[scores={job_id=3}] at @s run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s[scores={job_id=3}] at @s store result storage ffxiv:damage_path damage_amount float 1.0 run scoreboard players get @s DAMAGE_HELPER
execute as @s[scores={job_id=3}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 2
execute as @s[scores={job_id=3}] at @s if score @s limit_break matches ..99 run scoreboard players add @s limit_break 2
# Execute
execute as @s[scores={job_id=3}] at @s run particle dust_color_transition{from_color:[0.051,0.000,0.082],scale:1,to_color:[0.647,0.604,0.792]} ~ ~ ~ 1.5 1.5 1.5 1 100 normal @a[distance=..30]
execute as @s[scores={job_id=3},team=RED] at @s as @e[team=BLU,distance=..5] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=3},team=BLU] at @s as @e[team=RED,distance=..5] at @s run function ho9tocraft:utils/calc_damage
