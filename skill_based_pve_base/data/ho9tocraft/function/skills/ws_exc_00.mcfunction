# WEAPON SKILL: EXORCIST
# 早天刃 (Rapid Blade)
execute as @s[scores={job_id=100}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=100}] at @s run scoreboard players add @s DAMAGE_HELPER 1
# 1. 帰還地点を設定
execute as @s[scores={job_id=100},team=RED] at @s run summon armor_stand ~ ~ ~ {Silent:true,Invisible:true,Team:"RED",Tags:["Exc_RapidBlade"]}
execute as @s[scores={job_id=100},team=BLU] at @s run summon armor_stand ~ ~ ~ {Silent:true,Invisible:true,Team:"BLU",Tags:["Exc_RapidBlade"]}
# 2. 転移
execute as @s[scores={job_id=100},team=RED] at @s run teleport @s @e[distance=..20,sort=nearest,limit=1,team=BLU]
execute as @s[scores={job_id=100},team=BLU] at @s run teleport @s @e[distance=..20,sort=nearest,limit=1,team=RED]
# 3. 範囲攻撃
execute as @s[scores={job_id=100}] at @s run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s[scores={job_id=100}] at @s store result storage ffxiv:damage_path damage_amount float 1.0 run scoreboard players get @s DAMAGE_HELPER
execute as @s[scores={job_id=100}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 1
execute as @s[scores={job_id=100}] at @s run particle sweep_attack ~ ~0.25 ~ 6 0.2 6 1 100 normal @a[distance=..30]
execute as @s[scores={job_id=100},team=RED] at @s as @e[team=BLU,distance=..6] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=100},team=BLU] at @s as @e[team=RED,distance=..6] at @s run function ho9tocraft:utils/calc_damage
# 4. タグ付け・帰還指示
execute as @s[scores={job_id=100}] at @s run tag @s add Retop_RapidBlade
execute as @s[scores={job_id=100},tag=Exc_RegainBlade] at @s run function ho9tocraft:skills/regain
execute as @s[scores={job_id=100}] at @s run schedule function ho9tocraft:skills/rt_exc_00 7s append
# 5. コンボ
execute as @s[scores={job_id=100}] at @s run item replace entity @s hotbar.1 with red_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"combo":1}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.experience_orb.pickup"},use_cooldown={seconds:1.5,cooldown_group:"ffxiv:gcd_ws"},item_model="ffxiv:07_sam/hyosetsu",item_name={translate:"skill.ex1_exc.ws_1.name"},lore=[{translate:"skill.ex1_exc.ws_1.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.ws_1.lore.1",color:"gray",italic:false},[{translate:"skill.common.range.20m",color:"aqua",italic:false},{text:" / ",color:"gray"},{translate:"skill.common.area.6m",color:"aqua",italic:false}],[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray"},{translate:"skill.common.recast.1p5sec",color:"light_purple",italic:false}]]]
execute as @s[scores={job_id=100}] at @s run scoreboard players set @s click_red 0
execute as @s[scores={job_id=100}] at @s run advancement revoke @s only ho9tocraft:job/ex1_exc/ws_00
