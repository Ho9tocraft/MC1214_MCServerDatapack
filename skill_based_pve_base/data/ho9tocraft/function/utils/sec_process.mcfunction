scoreboard players add ^TDHelper sec_count 1
execute if score ^TDHelper sec_count matches 3 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute if score ^TDHelper sec_count matches 6 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute if score ^TDHelper sec_count matches 9 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute if score ^TDHelper sec_count matches 12 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute if score ^TDHelper sec_count matches 15 as @e[scores={limit_break=..99}] at @s run scoreboard players add @s limit_break 1
execute if score ^TDHelper sec_count matches 15 run scoreboard players set ^TDHelper sec_count 0
