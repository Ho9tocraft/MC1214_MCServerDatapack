# 個人スコア
execute as @a[scores={kills=1..}] at @s run scoreboard players operation @s KillDeathRate = @s kills
execute as @a[scores={deaths=1..}] at @s run scoreboard players operation @s KillDeathRate -= @s deaths

# キルスコア計上
execute if score ^TDHelper stage_condition matches 0..1 run scoreboard players set ^TDHelper kdrate_red 0
execute if score ^TDHelper stage_condition matches 0..1 run scoreboard players set ^TDHelper kdrate_blu 0
execute if score ^TDHelper stage_condition matches 0..1 as @a[team=RED] at @s if score ^TDHelper game_mode matches 0 run scoreboard players operation ^TDHelper kdrate_red += @s kills
execute if score ^TDHelper stage_condition matches 0..1 as @a[team=BLU] at @s if score ^TDHelper game_mode matches 0 run scoreboard players operation ^TDHelper kdrate_blu += @s kills
