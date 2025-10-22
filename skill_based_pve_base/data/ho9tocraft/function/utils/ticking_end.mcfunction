# Ticking End
# USER INTERFACE
execute as @a[scores={limit_break=101..}] at @s run scoreboard players set @s limit_break 100
execute as @a at @s run title @s actionbar [{text:"LIMIT BREAK: ",color:"yellow"},{score:{name:"@s",objective:"limit_break"},color:"gold"}]
execute as @a[scores={limit_break=100}] at @s run function ho9tocraft:effects/lb_glint
# Bossbar
execute if score ^TDHelper stage_condition matches -1 if score ^TDHelper st_pcount_time matches 1.. store result bossbar ho9tocraft:time_prepare value run scoreboard players get ^TDHelper st_pcount_time
execute if score ^TDHelper stage_condition matches 0..1 if score ^TDHelper st_tcount_time matches 1.. store result bossbar ho9tocraft:time_battle value run scoreboard players get ^TDHelper st_tcount_time
# Ticking Postprocess
execute if score ^TDHelper tick matches 20 run function ho9tocraft:utils/sec_process
execute if score ^TDHelper tick matches 20 run scoreboard players set ^TDHelper tick 0
