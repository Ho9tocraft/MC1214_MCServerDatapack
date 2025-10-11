# Ticking End
# USER INTERFACE
execute as @a[scores={limit_break=101..}] at @s run scoreboard players set @s limit_break 100
execute as @a at @s run title @s actionbar [{text:"LIMIT BREAK: ",color:"yellow"},{score:{name:"@s",objective:"limit_break"},color:"gold"}]
execute as @a[scores={limit_break=100}] at @s run function ho9tocraft:effects/lb_glint
# Ticking Postprocess
execute if score ^TDHelper tick matches 20 run function ho9tocraft:utils/sec_process
execute if score ^TDHelper tick matches 20 run scoreboard players set ^TDHelper tick 0
