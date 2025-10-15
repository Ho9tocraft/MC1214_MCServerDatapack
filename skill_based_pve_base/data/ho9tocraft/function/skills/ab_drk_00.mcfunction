# ABILITY: DARK KNIGHT
# ブラックナイト (The Blackest Night)
# 1. バフ点灯
execute as @s[scores={job_id=3}] at @s run effect give @s absorption 10 9 false
execute as @s[scores={job_id=3}] at @s run tag @s add Drk_BlkNight
# 2. 後処理
execute as @s[scores={job_id=3}] at @s run schedule function ho9tocraft:skills/rt_drk_00 10.5s append
execute as @s[scores={job_id=3}] at @s run scoreboard players set @s click_yellow 0
execute as @s[scores={job_id=3}] at @s run advancement revoke @s only ho9tocraft:job/03_drk/ab_00
execute as @s[scores={job_id=3}] at @s run item replace entity @s hotbar.2 with yellow_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"burned":true}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.wither.ambient"},use_cooldown={seconds:30,cooldown_group:"ffxiv:abcd"},\
item_model="ffxiv:03_drk/the_blackest_night",item_name={translate:"skill.03_drk.ab_0.name"},lore=[{translate:"skill.03_drk.ab_0.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.ab_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.0m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.0m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.30sec",color:"light_purple",italic:false}]]]
