particle dust_color_transition{from_color:[0.051,0.000,0.082],scale:1,to_color:[0.647,0.604,0.792]} ~ ~ ~ 1.5 1.5 1.5 1 100 normal @a[distance=..30]
execute as @s[team=RED] run tag @e[team=BLU,distance=..1.5,tag=!SHBR_EFF] add SHBR_EFF
execute as @s[team=BLU] run tag @e[team=RED,distance=..1.5,tag=!SHBR_EFF] add SHBR_EFF
