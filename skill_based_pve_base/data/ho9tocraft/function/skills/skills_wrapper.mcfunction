# 暗黒騎士
execute as @a[scores={job_id=3}] at @s if items entity @s hotbar.2 yellow_dye[custom_data={"combinat_data":{"id":3,"burned":1b}}] at @s run \
item replace entity @s hotbar.2 with yellow_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"burned":false}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.wither.ambient"},use_cooldown={seconds:30,cooldown_group:"ffxiv:abcd"},\
item_model="ffxiv:03_drk/the_blackest_night",item_name={translate:"skill.03_drk.ab_0.name"},lore=[{translate:"skill.03_drk.ab_0.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.ab_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.0m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.0m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.30sec",color:"light_purple",italic:false}]]]
# 巫覡
execute as @a[scores={job_id=100}] at @s if items entity @s hotbar.2 yellow_dye[custom_data={"combinat_data":{"id":100,"burned":1b}}] at @s run \
item replace entity @s hotbar.2 with yellow_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"burned":false}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.wither.ambient"},use_cooldown={seconds:30,cooldown_group:"ffxiv:abcd"},\
item_model="ffxiv:09_nin/three_mudra",item_name={translate:"skill.ex1_exc.ab_0.name"},lore=[{translate:"skill.ex1_exc.ab_0.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.ab_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.0m",color:aqua,italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.0m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.30sec",color:light_purple,italic:false}]]]
