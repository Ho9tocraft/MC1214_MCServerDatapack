# LIMIT BREAK: DARK KNIGHT
# イーブンタイド (Eventide)
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER_2 run attribute @s attack_damage get 1.0
execute as @s[scores={job_id=3}] at @s run scoreboard players add @s DAMAGE_HELPER_2 10
execute as @s[scores={job_id=3}] at @s run scoreboard players operation @s DAMAGE_HELPER += @s DAMAGE_HELPER_2
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s DAMAGE_HELPER_2 0
execute as @s[scores={job_id=3}] at @s run playsound ffxiv:limit_break_activated player @a[distance=..30] ~ ~ ~ 150 1.0 0.5
# 1. ターゲットロック
## 赤→青
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^1.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^-1.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^3.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^-3.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^4.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^-4.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^6.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^-6.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^7.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^-7.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^9.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=BLU] feet positioned ^ ^ ^-9.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
## 青→赤
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^1.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^-1.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^3.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^-3.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^4.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^-4.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^6.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^-6.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^7.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^-7.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^9.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=BLU] at @s if entity @e[distance=..10] anchored eyes facing entity @e[distance=..10,sort=nearest,limit=1,team=RED] feet positioned ^ ^ ^-9.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
# 2. 範囲攻撃
execute as @s[scores={job_id=3}] at @s run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s[scores={job_id=3}] at @s store result storage ffxiv:damage_path damage_amount float 1.0 run scoreboard players get @s DAMAGE_HELPER
execute as @s[scores={job_id=3}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 2
execute as @s[scores={job_id=3},team=RED] at @s as @e[team=BLU,tag=SHBR_EFF] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=3},team=BLU] at @s as @e[team=RED,tag=SHBR_EFF] at @s run function ho9tocraft:utils/calc_damage
execute as @e[tag=SHBR_EFF] at @s run tag @s remove SHBR_EFF
# 3. 完了
execute as @s[scores={job_id=3}] at @s run item replace entity @s hotbar.3 with orange_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"burned":true}},use_cooldown={seconds:10,cooldown_group:"ffxiv:limit_break"},\
item_model="ffxiv:03_drk/eventide",item_name={"translate":"skill.03_drk.lb.name"},\
lore=[{translate:"skill.03_drk.lb.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.lb.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.10m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.10m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.10sec",color:"light_purple",italic:false}]]]
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s limit_break 0
execute as @s[scores={job_id=3}] at @s run function ho9tocraft:skills/activate_lb
execute as @s[scores={job_id=3}] at @s run advancement revoke @s only ho9tocraft:job/03_drk/lb_00
