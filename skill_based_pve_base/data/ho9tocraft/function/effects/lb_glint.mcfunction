# 暗黒騎士：イーブンタイド
execute if score @s job_id matches 3 run item replace entity @s hotbar.3 with orange_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"burned":0b}},use_cooldown={seconds:10,cooldown_group:"ffxiv:limit_break"},\
item_model="ffxiv:03_drk/eventide",item_name={"translate":"skill.03_drk.lb.name"},\
lore=[{translate:"skill.03_drk.lb.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.lb.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.10m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.10m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.10sec",color:"light_purple",italic:false}]],\
consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"intentionally_empty"},enchantment_glint_override=true]
# 巫覡：半顕現
execute if score @s job_id matches 100 run item replace entity @s hotbar.3 with orange_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"burned":0b}},use_cooldown={seconds:10,cooldown_group:"ffxiv:limit_break"},\
item_model="ffxiv:15_smn/everlasting_flight",item_name={"translate":"skill.ex1_exc.lb.name"},\
lore=[{translate:"skill.ex1_exc.lb.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.lb.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.20m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.6m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.10sec",color:"light_purple",italic:false}]],\
consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"intentionally_empty"},enchantment_glint_override=true]
