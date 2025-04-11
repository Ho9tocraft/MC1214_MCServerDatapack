# アクション
# 前処理
data merge storage ffxiv:damage_path {owner:[I;0,0,0,0],damage_amount:0,target:[I;0,0,0,0]}

# --ナイト--

# > 単体コンボ(ファスブレ -> ライオット -> ロイヤルアソリティ -> ロイエ -> ゲベート -> グラブカッマー)
execute as @e[tag=!WS_Used] at @s if predicate ho9tocraft:jobactions/01_pld/sepulchre run function ho9tocraft:skills/jobactions/01_pld/act_sepulchre
execute as @e[tag=!WS_Used] at @s if predicate ho9tocraft:jobactions/01_pld/supplication run function ho9tocraft:skills/jobactions/01_pld/act_supplication
execute as @e[tag=!WS_Used] at @s if predicate ho9tocraft:jobactions/01_pld/atonement run function ho9tocraft:skills/jobactions/01_pld/act_atonement
execute as @e[tag=!WS_Used] at @s if predicate ho9tocraft:jobactions/01_pld/royal_authority run function ho9tocraft:skills/jobactions/01_pld/act_royal_authority
execute as @e[tag=!WS_Used] at @s if predicate ho9tocraft:jobactions/01_pld/riot_blade run function ho9tocraft:skills/jobactions/01_pld/act_riot_blade
execute as @e[tag=!WS_Used] at @s if predicate ho9tocraft:jobactions/01_pld/fast_blade run function ho9tocraft:skills/jobactions/01_pld/act_fast_blade

# --共通--
execute as @e at @s run function ho9tocraft:skills/common/sprint_act

# --後処理--
execute as @e at @s if score @s clickHB1 matches 1.. run scoreboard players set @s clickHB1 0
execute as @e at @s if score @s clickHB2 matches 1.. run scoreboard players set @s clickHB2 0
execute as @e at @s if score @s clickHB3 matches 1.. run scoreboard players set @s clickHB3 0
execute as @e at @s if score @s clickHB5 matches 1.. run scoreboard players set @s clickHB5 0
execute as @e at @s if score @s clickHB6 matches 1.. run scoreboard players set @s clickHB6 0
execute as @e at @s if score @s clickHB7 matches 1.. run scoreboard players set @s clickHB7 0
execute as @e at @s if score @s clickHB8 matches 1.. run scoreboard players set @s clickHB8 0
execute as @e at @s if score @s expireCombo matches 1.. run scoreboard players remove @s expireCombo 1
execute as @e at @s run function #ho9tocraft:reset_combo
execute as @e at @s run tag @s remove WS_Used
execute as @e at @s run tag @s remove MG_Used
execute as @e at @s run tag @s remove AB_Used
