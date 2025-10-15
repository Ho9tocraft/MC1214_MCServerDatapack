# WEAPON SKILL: EXORCIST
# 乱刃・雪月花 (Overproduction Steel)
execute as @s[scores={job_id=100}] store result score @s DAMAGE_HELPER run data get entity @s Inventory[0].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}].amount
execute as @s[scores={job_id=100}] at @s run scoreboard players add @s DAMAGE_HELPER 9
# 1. 範囲攻撃
execute as @s[scores={job_id=100}] at @s run data modify storage ffxiv:damage_path owner set from entity @s UUID
execute as @s[scores={job_id=100}] at @s store result storage ffxiv:damage_path damage_amount float 1.0 run scoreboard players get @s DAMAGE_HELPER
execute as @s[scores={job_id=100}] at @s run scoreboard players set ^TDHelper DAMAGE_CATEGORY 1
execute as @s[scores={job_id=100}] at @s at @e[distance=..5,sort=nearest,limit=1] run particle sweep_attack ~ ~1 ~ 0.5 1 0.5 1 100 normal @a[distance=..30]
execute as @s[scores={job_id=100},team=RED] at @s as @e[team=BLU,distance=..5,sort=nearest,limit=1] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=100},team=BLU] at @s as @e[team=RED,distance=..5,sort=nearest,limit=1] at @s run function ho9tocraft:utils/calc_damage
execute as @s[scores={job_id=100},team=RED] at @s as @e[team=BLU,distance=..5,sort=nearest,limit=1] at @s run effect give @s wither 30 1 false
execute as @s[scores={job_id=100},team=BLU] at @s as @e[team=RED,distance=..5,sort=nearest,limit=1] at @s run effect give @s wither 30 1 false
execute as @s[scores={job_id=100,limit_break=..99}] at @s if entity @e[distance=..5,sort=nearest] run scoreboard players add @s limit_break 10
# 2. コンボ・後処理
execute as @s[scores={job_id=100}] at @s run item replace entity @s hotbar.1 with red_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"combo":0}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.experience_orb.pickup"},use_cooldown={seconds:1.5,cooldown_group:"ffxiv:gcd_ws"},item_model="ffxiv:07_sam/hissatsu_soten",item_name={translate:"skill.ex1_exc.ws_0.name"},lore=[{translate:"skill.ex1_exc.ws_0.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.ws_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.20m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.6m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.1p5sec",color:"light_purple",italic:false}]]]
execute as @s[scores={job_id=100}] at @s run scoreboard players set @s click_red 0
execute as @s[scores={job_id=100}] at @s run advancement revoke @s only ho9tocraft:job/ex1_exc/ws_04
execute as @s[scores={job_id=100},tag=Exc_RegainBlade,team=RED] at @s if entity @e[team=BLU,distance=..5,sort=nearest] run function ho9tocraft:skills/regain
execute as @s[scores={job_id=100},tag=Exc_RegainBlade,team=BLU] at @s if entity @e[team=RED,distance=..5,sort=nearest] run function ho9tocraft:skills/regain
