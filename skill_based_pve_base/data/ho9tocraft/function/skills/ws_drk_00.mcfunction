# WEAPON SKILL: EXORCIST
# ハードスラッシュ (Hard Slash)
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER_2 run attribute @s attack_damage get 1.0
execute as @s[scores={job_id=3}] at @s run scoreboard players operation @s DAMAGE_HELPER += @s DAMAGE_HELPER_2
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s DAMAGE_HELPER_2 0
# 1. 単体攻撃
execute as @s[scores={job_id=3}] at @s run effect give @s instant_health 1 1 false
execute as @s[scores={job_id=3}] at @s run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s[scores={job_id=3}] at @s store result storage ffxiv:damage_path damage_amount float 1.0 run scoreboard players get @s DAMAGE_HELPER
execute as @s[scores={job_id=3}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 1
execute as @s[scores={job_id=3}] at @s run particle explosion ~ ~ ~ 1.5 1.5 1.5 1 100 normal @a[distance=..30]
execute as @s[scores={job_id=3},team=RED] at @s as @e[team=BLU,distance=..5,sort=nearest,limit=1] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=3},team=BLU] at @s as @e[team=RED,distance=..5,sort=nearest,limit=1] at @s run function ho9tocraft:utils/calc_damage
# 2. コンボ
execute as @s[scores={job_id=3}] at @s run item replace entity @s hotbar.1 with red_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"combo":1}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.experience_orb.pickup"},use_cooldown={seconds:2.5,cooldown_group:"ffxiv:gcd_ws"},\
item_model="ffxiv:03_drk/syphon_strike",item_name={translate:"skill.03_drk.ws_1.name"},lore=[{translate:"skill.03_drk.ws_c.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.ws_1.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.5m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.0m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.2p5sec",color:"light_purple",italic:false}]]]
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s click_red 0
execute as @s[scores={job_id=3}] at @s run advancement revoke @s only ho9tocraft:job/03_drk/ws_00
