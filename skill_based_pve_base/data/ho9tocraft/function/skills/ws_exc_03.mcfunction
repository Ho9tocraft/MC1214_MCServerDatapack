# WEAPON SKILL: EXORCIST
# 満月乱舞 (Fullmoon Steels)
execute as @s[scores={job_id=100,click_red=1..}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=100,click_red=1..}] at @s run scoreboard players add @s DAMAGE_HELPER 1
# 1. 範囲攻撃
execute as @s[scores={job_id=100,click_red=1..}] at @s run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s[scores={job_id=100,click_red=1..}] at @s store result storage ffxiv:damage_path damage_amount float 1.0 run scoreboard players get @s DAMAGE_HELPER
execute as @s[scores={job_id=100,click_red=1..}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 1
execute as @s[scores={job_id=100,click_red=1..}] at @s run particle sweep_attack ~ ~0.25 ~ 6 0.2 6 1 100 normal @a[distance=..30]
execute as @s[scores={job_id=100,click_red=1..},team=RED] at @s as @e[team=BLU,distance=..6] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=100,click_red=1..},team=BLU] at @s as @e[team=RED,distance=..6] at @s run function ho9tocraft:utils/calc_damage
# 2. コンボ・後処理
execute as @s[scores={job_id=100,click_red=1..}] at @s run effect give @s absorption 30 4 false
execute as @s[scores={job_id=100,click_red=1..}] at @s run item replace entity @s hotbar.1 with red_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"combo":4}},consumable={animation:"bow",consume_seconds:0,has_consume_particles:false,sound:"entity.experience_orb.pickup"},use_cooldown={seconds:1.5,cooldown_group:"gcd_ws"},item_model="ffxiv:07_sam/midare_setsugekka",item_name={translate:"skill.ex1_exc.ws_4.name"},lore=[{translate:"skill.ex1_exc.ws_4.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.ws_4.lore.1",color:"gray",italic:false},[{translate:"skill.common.range.0m",color:"aqua",italic:false}],[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray"},{translate:"skill.common.recast.1p5sec",color:"light_purple",italic:false}]],use_remainder={id:"red_dye",count:1,components:{max_stack_size:1,custom_data:{"combinat_data":{"id":100,"combo":4}},consumable:{animation:"bow",consume_seconds:0,has_consume_particles:false,sound:"entity.experience_orb.pickup"},use_cooldown:{seconds:1.5,cooldown_group:"gcd_ws"},item_model:"ffxiv:07_sam/midare_setsugekka",item_name:{translate:"skill.ex1_exc.ws_4.name"},lore:[{translate:"skill.ex1_exc.ws_4.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.ws_4.lore.1",color:"gray",italic:false},[{translate:"skill.common.range.0m",color:"aqua",italic:false}],[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray"},{translate:"skill.common.recast.1p5sec",color:"light_purple",italic:false}]]}}]
execute as @s[scores={job_id=100,click_red=1..}] at @s run scoreboard players set @s click_red 0
