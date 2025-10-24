# BATTLE START

# Introduce
execute as @a at @s run function ho9tocraft:games/00_introduce
# Stage Select
execute if score ^TDHelper stage_id matches 0 run function ho9tocraft:stages/stage_01
# Info Copy
execute store result score ^TDHelper st_tcount_time run scoreboard players get ^TDHelper st_tcount_ref
bossbar set ho9tocraft:time_battle name {translate:"ui.battle_time.info"}
bossbar set ho9tocraft:time_battle color red
bossbar set ho9tocraft:time_battle style notched_6
execute store result bossbar ho9tocraft:time_battle max run scoreboard players get ^TDHelper st_tcount_ref
execute store result bossbar ho9tocraft:time_battle value run scoreboard players get ^TDHelper st_tcount_time
scoreboard players set ^TDHelper st_pcount_time 30
execute store result bossbar ho9tocraft:time_prepare value run bossbar get ho9tocraft:time_prepare max
bossbar set ho9tocraft:time_prepare visible true
# LB
scoreboard players set @a limit_break 0
# キルスコア
scoreboard players set ^TDHelper kdrate_red 0
scoreboard players set ^TDHelper kdrate_blu 0
# 戦力スコア
scoreboard players set ^TDHelper warscore_red 1000
scoreboard players set ^TDHelper warscore_blu 1000
# Battle Scores
scoreboard players set @a kills 0
scoreboard players set @a deaths 0
# timing
scoreboard players set ^TDHelper stage_condition -1
gamemode adventure @a[team=RED]
gamemode adventure @a[team=BLU]
give @a[team=RED] trial_key 4
give @a[team=BLU] trial_key 4
# tp
function ho9tocraft:games/00_teleport_stage
