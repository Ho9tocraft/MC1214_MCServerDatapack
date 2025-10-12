# WEAPON SKILL: EXORCIST
# シャドウブリンガー (Shadowbringer)
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=3}] store result score @s DAMAGE_HELPER_2 run attribute @s attack_damage get 1.0
execute as @s[scores={job_id=3}] at @s run scoreboard players add @s DAMAGE_HELPER_2 8
execute as @s[scores={job_id=3}] at @s run scoreboard players operation @s DAMAGE_HELPER += @s DAMAGE_HELPER_2
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s DAMAGE_HELPER_2 0
# 1. 範囲攻撃
execute as @s[scores={job_id=3}] at @s run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s[scores={job_id=3}] at @s store result storage ffxiv:damage_path damage_amount float 1.0 run scoreboard players get @s DAMAGE_HELPER
execute as @s[scores={job_id=3}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 2
execute as @s[scores={job_id=3}] at @s positioned ^ ^ ^1.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3}] at @s positioned ^ ^ ^3.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3}] at @s positioned ^ ^ ^4.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3}] at @s positioned ^ ^ ^6.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3}] at @s positioned ^ ^ ^7.5 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3}] at @s positioned ^ ^ ^9.0 run function ho9tocraft:skills/03_drk/shadowbringer_particles
execute as @s[scores={job_id=3},team=RED] at @s as @e[team=BLU,tag=SHBR_EFF] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=3},team=BLU] at @s as @e[team=RED,tag=SHBR_EFF] at @s run function ho9tocraft:utils/calc_damage
execute as @e[tag=SHBR_EFF] at @s run tag @s remove SHBR_EFF
# 2. コンボ完了
execute as @s[scores={job_id=3}] at @s run item replace entity @s hotbar.1 with red_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"combo":0}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.experience_orb.pickup"},\
use_cooldown={seconds:2.5,cooldown_group:"ffxiv:gcd_ws"},item_model="ffxiv:03_drk/hard_slash",item_name={translate:"skill.03_drk.ws_0.name"},\
lore=[{translate:"skill.03_drk.ws_c.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.ws_0.lore.1",color:"gray",italic:false},\
{translate:"skill.common.range.5m",color:"aqua"},{translate:"skill.common.area.0m",color:"aqua"},\
{translate:"skill.common.cast.instant",color:"green"},{translate:"skill.common.recast.2p5sec",color:"light_purple"}]]
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s click_red 0
execute as @s[scores={job_id=3}] at @s run advancement revoke @s only ho9tocraft:job/03_drk/ws_03
