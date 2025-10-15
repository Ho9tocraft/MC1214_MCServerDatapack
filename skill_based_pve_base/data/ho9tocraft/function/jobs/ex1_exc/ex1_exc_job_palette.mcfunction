# JOB ID: EX1(100)/en_US: Exorcist/ja_JP: 巫覡
function ho9tocraft:jobs/00_job_purge
scoreboard players set @s job_id 100
# Armor
execute as @p at @s run item replace entity @s armor.head with leather_helmet[equippable={slot:"head",asset_id:"ho9tocraft:raised_soul"},attribute_modifiers=[{type:"armor",amount:3,operation:"add_value",id:"ho9tocraft:exorcist_head_ac",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:exorcist_head_at",display:{type:"hidden"},slot:"armor"}],item_model="ho9tocraft:raised_soul_helmet",item_name={translate:"item.raised_soul.helmet.name",color:"#FDEFF2"},unbreakable={},\
enchantments={binding_curse:1},tooltip_display={hidden_components:["unbreakable"]}] 1
execute as @p at @s run item replace entity @s armor.chest with leather_chestplate[equippable={slot:"chest",asset_id:"ho9tocraft:raised_soul"},attribute_modifiers=[{type:"armor",amount:8,operation:"add_value",id:"ho9tocraft:exorcist_chest_ac",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:exorcist_chest_at",display:{type:"hidden"},slot:"armor"}],item_model="ho9tocraft:raised_soul_chestplate",item_name={translate:"item.raised_soul.chestplate.name",color:"#FDEFF2"},unbreakable={},\
enchantments={binding_curse:1},tooltip_display={hidden_components:["unbreakable"]}] 1
execute as @p at @s run item replace entity @s armor.legs with leather_leggings[equippable={slot:"legs",asset_id:"ho9tocraft:raised_soul"},attribute_modifiers=[{type:"armor",amount:6,operation:"add_value",id:"ho9tocraft:exorcist_legs_ac",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:exorcist_legs_at",display:{type:"hidden"},slot:"armor"}],item_model="ho9tocraft:raised_soul_leggings",item_name={translate:"item.raised_soul.leggings.name",color:"#FDEFF2"},unbreakable={},\
enchantments={binding_curse:1},tooltip_display={hidden_components:["unbreakable"]}] 1
execute as @p at @s run item replace entity @s armor.feet with leather_boots[equippable={slot:"feet",asset_id:"ho9tocraft:raised_soul"},attribute_modifiers=[{type:"armor",amount:3,operation:"add_value",id:"ho9tocraft:exorcist_feet_ac",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:exorcist_feet_at",display:{type:"hidden"},slot:"armor"}],item_model="ho9tocraft:raised_soul_boots",item_name={translate:"item.raised_soul.boots.name",color:"#FDEFF2"},unbreakable={},\
enchantments={binding_curse:1},tooltip_display={hidden_components:["unbreakable"]}] 1
# Main Weapon
execute as @p at @s run item replace entity @s hotbar.0 with netherite_sword[attribute_modifiers=[{type:"attack_damage",amount:8,operation:"add_value",id:"ho9tocraft:exorcist_mainhand",display:{type:"hidden"},slot:"mainhand"},{type:"attack_speed",amount:0.75,operation:"add_multiplied_base",id:"ho9tocraft:exorcist_mainhand",display:{type:"hidden"},slot:"mainhand"}],item_model="ho9tocraft:ex1_exc/dfirelink_rhblade",item_name={translate:"item.raised_soul.rhweapon.name",color:"#FDEFF2"},unbreakable={},\
tooltip_display={hidden_components:["unbreakable"]}] 1
execute as @p at @s run item replace entity @s weapon.offhand with diamond_sword[attribute_modifiers=[{type:"attack_damage",amount:10,operation:"add_value",id:"ho9tocraft:exorcist_offhand",display:{type:"hidden"},slot:"mainhand"},{type:"attack_speed",amount:0.75,operation:"add_multiplied_base",id:"ho9tocraft:exorcist_offhand",display:{type:"hidden"},slot:"mainhand"}],item_model="ho9tocraft:ex1_exc/dfirelink_lhblade",item_name={translate:"item.raised_soul.lhweapon.name",color:"#FDEFF2"},unbreakable={},\
tooltip_display={hidden_components:["unbreakable"]}] 1
# Skills
execute as @p at @s run item replace entity @s hotbar.1 with red_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"combo":0}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.experience_orb.pickup"},use_cooldown={seconds:1.5,cooldown_group:"ffxiv:gcd_ws"},\
item_model="ffxiv:07_sam/hissatsu_soten",item_name={translate:"skill.ex1_exc.ws_0.name"},\
lore=[{translate:"skill.ex1_exc.ws_0.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.ws_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.20m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.6m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.1p5sec",color:"light_purple",italic:false}]]]
execute as @p at @s run item replace entity @s hotbar.2 with yellow_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"burned":false}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.wither.ambient"},use_cooldown={seconds:30,cooldown_group:"ffxiv:abcd"},\
item_model="ffxiv:09_nin/three_mudra",item_name={translate:"skill.ex1_exc.ab_0.name"},\
lore=[{translate:"skill.ex1_exc.ab_0.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.ab_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.0m",color:aqua,italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.0m",color:"aqua"}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.30sec",color:light_purple,italic:false}]]]
execute as @p at @s run item replace entity @s hotbar.3 with orange_dye[max_stack_size=1,custom_data={"combinat_data":{"id":100,"burned":true}},use_cooldown={seconds:10,cooldown_group:"ffxiv:limit_break"},\
item_model="ffxiv:15_smn/everlasting_flight",item_name={"translate":"skill.ex1_exc.lb.name"},\
lore=[{translate:"skill.ex1_exc.lb.lore.0",color:"gray",italic:false},{translate:"skill.ex1_exc.lb.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.20m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.6m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.10sec",color:"light_purple",italic:false}]]]
# Attribute
execute as @p at @s run attribute @s max_health base set 40
execute as @p at @s run attribute @s movement_speed modifier add ho9tocraft:job_movement_env 0.2 add_multiplied_total
execute as @p at @s run effect give @s instant_health 60 3 true
