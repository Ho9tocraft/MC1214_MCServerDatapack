title @a times 20 160 20
execute if score ^TDHelper game_mode matches 0 run title @a title [{score:{name:"^TDHelper",objective:"kdrate_red"},color:"red"},{text:" - ",color:"white"},{score:{name:"^TDHelper",objective:"kdrate_blu"},color:"blue"}]
teleport @a -120 65 8
scoreboard players set ^TDHelper stage_condition -2
effect give @a saturation 1200 3 true
execute as @a at @s run team leave @s
execute as @a at @s run function ho9tocraft:jobs/00_job_purge
bossbar set ho9tocraft:time_battle visible false
