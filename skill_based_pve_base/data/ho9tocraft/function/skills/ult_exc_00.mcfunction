# LIMIT BREAK: EXORCIST
# 半顕現
execute as @s[scores={job_id=100}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=100}] store result score @s DAMAGE_HELPER_2 run attribute @s attack_damage get 1.0
execute as @s[scores={job_id=100}] at @s run scoreboard players operation @s DAMAGE_HELPER += @s DAMAGE_HELPER_2
execute as @s[scores={job_id=100}] at @s run scoreboard players set @s DAMAGE_HELPER_2 0
execute as @s[scores={job_id=100}] at @s run playsound ffxiv:limit_break_activated player @a[distance=..30] ~ ~ ~ 150 1.0 0.5
# 1. 半顕現フラグ発動
execute as @s[scores={job_id=100}] at @s run tag @s add SEMIPRIMED
execute as @s[scores={job_id=100}] at @s run effect give @s haste 30 3 false
execute as @s[scores={job_id=100}] at @s run effect give @s health_boost 30 9 false
execute as @s[scores={job_id=100}] at @s run effect give @s jump_boost 30 1 false
execute as @s[scores={job_id=100}] at @s run effect give @s night_vision 30 0 false
execute as @s[scores={job_id=100}] at @s run effect give @s regeneration 30 1 false
execute as @s[scores={job_id=100}] at @s run effect give @s saturation 600 3 false
execute as @s[scores={job_id=100}] at @s run effect give @s strength 30 4 false
execute as @s[scores={job_id=100}] at @s run effect give @s unluck 60 255 false
# 2. 転移前の覇気・ダメージ準備
execute as @s[scores={job_id=100}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 2
execute as @s[scores={job_id=100}] at @s run particle flame ~ ~1 ~ 6 6 6 1 200 normal @a[distance=..30]
execute as @s[scores={job_id=100},team=RED] at @s as @e[team=BLU,distance=..6] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=100},team=BLU] at @s as @e[team=RED,distance=..6] at @s run function ho9tocraft:utils/calc_damage
# 3. 転移
execute as @s[scores={job_id=100},team=RED] at @s run teleport @s @e[distance=..20,sort=nearest,limit=1,team=BLU]
execute as @s[scores={job_id=100},team=BLU] at @s run teleport @s @e[distance=..20,sort=nearest,limit=1,team=RED]
# 4. 転移後の覇気
execute as @s[scores={job_id=100}] at @s run particle sweep_attack ~ ~0.25 ~ 6 0.2 6 1 100 normal @a[distance=..30]
execute as @s[scores={job_id=100},team=RED] at @s as @e[team=BLU,distance=..6] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=100},team=BLU] at @s as @e[team=RED,distance=..6] at @s run function ho9tocraft:utils/calc_damage
# 5. 後処理
execute as @s[scores={job_id=100}] at @s run schedule function ho9tocraft:skills/rt_exc_lb 30.5s append
execute as @s[scores={job_id=100}] at @s run scoreboard players set @s limit_break 0
execute as @s[scores={job_id=100}] at @s run tag @s add END_OF_LB
execute as @s[scores={job_id=100}] at @s run item replace entity @s hotbar.3 with orange_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"burned":true}},use_cooldown={seconds:10,cooldown_group:"ffxiv:limit_break"},\
item_model="ffxiv:15_smn/everlasting_flight",item_name={"translate":"skill.ex1_exc.lb.name"},\
lore=[{translate:"skill.ex1_exc.lb.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.lb.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.20m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.6m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.10sec",color:"light_purple",italic:false}]]]
execute as @s[scores={job_id=100}] at @s run advancement revoke @s only ho9tocraft:job/ex1_exc/lb_00
