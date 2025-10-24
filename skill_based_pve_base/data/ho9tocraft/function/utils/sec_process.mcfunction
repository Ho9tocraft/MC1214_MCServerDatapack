scoreboard players add ^TDHelper sec_count 1
# LIMIT BREAK
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 3 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 6 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 9 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 12 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 15 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 18 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 21 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 24 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 27 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 30 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 33 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 36 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 39 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 42 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 45 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 48 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 51 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 54 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 57 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute unless score ^TDHelper stage_condition matches -1 if score ^TDHelper sec_count matches 60 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
# GENERATOR SPAWN
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper sec_count matches 10 run function ho9tocraft:games/10_gain_generator
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper sec_count matches 20 run function ho9tocraft:games/10_gain_generator
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper sec_count matches 30 run function ho9tocraft:games/10_gain_generator
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper sec_count matches 40 run function ho9tocraft:games/10_gain_generator
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper sec_count matches 50 run function ho9tocraft:games/10_gain_generator
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper sec_count matches 60 run function ho9tocraft:games/10_gain_generator
# STAGE SUPPLY
execute if score ^TDHelper stage_condition matches 0 if score ^TDHelper st_tcount_time matches 450 run function ho9tocraft:games/10_supply_chest
execute if score ^TDHelper stage_condition matches 0 if score ^TDHelper st_tcount_time matches 300 run function ho9tocraft:games/10_supply_chest
execute if score ^TDHelper stage_condition matches 0 if score ^TDHelper st_tcount_time matches 150 run function ho9tocraft:games/10_supply_chest
# GAME PROCESS
execute if score ^TDHelper stage_condition matches -1 if score ^TDHelper st_pcount_time matches 6.. as @a run playsound block.note_block.hat ui @s ~ ~ ~ 100.0 1.0 0.75
execute if score ^TDHelper stage_condition matches -1 if score ^TDHelper st_pcount_time matches 1..5 as @a run playsound block.note_block.harp ui @s ~ ~ ~ 100.0 1.0 0.75
execute if score ^TDHelper stage_condition matches -1 if score ^TDHelper st_pcount_time matches 1.. run scoreboard players remove ^TDHelper st_pcount_time 1
execute if score ^TDHelper stage_condition matches -1 if score ^TDHelper st_pcount_time matches 0 run function ho9tocraft:games/01_weapons_free
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper st_tcount_time matches 1.. run scoreboard players remove ^TDHelper st_tcount_time 1
execute if score ^TDHelper stage_condition matches 0 if score ^TDHelper st_tcount_time matches 300 run function ho9tocraft:games/10_reset_vault
execute if score ^TDHelper stage_condition matches 0 if score ^TDHelper st_tcount_time matches 0 run function ho9tocraft:games/98_battle_overtime
execute if score ^TDHelper stage_condition matches 1 if score ^TDHelper st_tcount_time matches 0 run function ho9tocraft:games/99_battle_end_0
# PROCESS END
execute if score ^TDHelper sec_count matches 60 run scoreboard players set ^TDHelper sec_count 0
