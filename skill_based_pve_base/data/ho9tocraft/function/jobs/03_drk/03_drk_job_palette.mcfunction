# JOB ID: 3(3)/en_US: Dark Knight/ja_JP: 暗黒騎士
function ho9tocraft:jobs/00_job_purge
scoreboard players set @s job_id 3
# Armor
execute as @p at @s run item replace entity @s armor.head with iron_helmet[equippable={slot:"head",asset_id:"ho9tocraft:dark_knight"},\
attribute_modifiers=[{type:"armor",amount:6,operation:"add_value",id:"ho9tocraft:dark_knight_helmet",display:{type:"hidden"},slot:"armor"},\
{type:"armor_toughness",amount:2,operation:"add_value",id:"ho9tocraft:dark_knight_helmet",display:{type:"hidden"},slot:"armor"}],unbreakable={},item_model="ho9tocraft:03_drk/dark_knight_helmet",item_name={translate:"item.dark_knight.helmet.name",color:"#1e90ff"}] 1
execute as @p at @s run item replace entity @s armor.chest with iron_chestplate[equippable={slot:"chest",asset_id:"ho9tocraft:dark_knight"},\
attribute_modifiers=[{type:"armor",amount:16,operation:"add_value",id:"ho9tocraft:dark_knight_chestplate",display:{type:"hidden"},slot:"armor"},\
{type:"armor_toughness",amount:2,operation:"add_value",id:"ho9tocraft:dark_knight_chestplate",display:{type:"hidden"},slot:"armor"}],unbreakable={},item_model="ho9tocraft:03_drk/dark_knight_chestplate",item_name={translate:"item.dark_knight.chestplate.name",color:"#1e90ff"}] 1
execute as @p at @s run item replace entity @s armor.legs with iron_chestplate[equippable={slot:"legs",asset_id:"ho9tocraft:dark_knight"},\
attribute_modifiers=[{type:"armor",amount:12,operation:"add_value",id:"ho9tocraft:dark_knight_leggings",display:{type:"hidden"},slot:"armor"},\
{type:"armor_toughness",amount:2,operation:"add_value",id:"ho9tocraft:dark_knight_leggings",display:{type:"hidden"},slot:"armor"}],unbreakable={},item_model="ho9tocraft:03_drk/dark_knight_leggings",item_name={translate:"item.dark_knight.leggings.name",color:"#1e90ff"}] 1
execute as @p at @s run item replace entity @s armor.feet with iron_chestplate[equippable={slot:"feet",asset_id:"ho9tocraft:dark_knight"},\
attribute_modifiers=[{type:"armor",amount:6,operation:"add_value",id:"ho9tocraft:dark_knight_boots",display:{type:"hidden"},slot:"armor"},\
{type:"armor_toughness",amount:2,operation:"add_value",id:"ho9tocraft:dark_knight_boots",display:{type:"hidden"},slot:"armor"}],unbreakable={},item_model="ho9tocraft:03_drk/dark_knight_boots",item_name={translate:"item.dark_knight.boots.name",color:"#1e90ff"}] 1
# Main Weapon
execute as @p at @s run item replace entity @s hotbar.0 with netherite_sword[attribute_modifiers=[{type:"attack_damage",amount:12,operation:"add_value",id:"ho9tocraft:ultimate_nothung",display:{type:"hidden"},slot:"mainhand"},{type:"attack_speed",amount:-0.75,operation:"add_multiplied_base",id:"ho9tocraft:ultimate_nothung",display:{type:"hidden"},slot:"hand"}],item_model="ho9tocraft:03_drk/ultimate_nothung",item_name={translate:"item.ultimate_nothung.name",color:"#ffd700"},weapon={disable_blocking_for_seconds:10},unbreakable={}]
# Skills
execute as @p at @s run item replace entity @s hotbar.1 with red_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"combo":0}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.experience_orb.pickup"},use_cooldown={seconds:2.5,cooldown_group:"ffxiv:gcd_ws"},\
item_model="ffxiv:03_drk/hard_slash",item_name={translate:"skill.03_drk.ws_0.name"},lore=[{translate:"skill.03_drk.ws_c.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.ws_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.5m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.0m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.2p5sec",color:"light_purple",italic:false}]]]
execute as @p at @s run item replace entity @s hotbar.2 with yellow_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"burned":false}},consumable={animation:"bow",consume_seconds:0.05,has_consume_particles:false,sound:"entity.wither.ambient"},use_cooldown={seconds:30,cooldown_group:"ffxiv:abcd"},\
item_model="ffxiv:03_drk/the_blackest_night",item_name={translate:"skill.03_drk.ab_0.name"},lore=[{translate:"skill.03_drk.ab_0.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.ab_0.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.0m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.0m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.30sec",color:"light_purple",italic:false}]]]
execute as @p at @s run item replace entity @s hotbar.3 with orange_dye[max_stack_size=1,custom_data={"combinat_data":{"id":3,"burned":true}},use_cooldown={seconds:10,cooldown_group:"ffxiv:limit_break"},\
item_model="ffxiv:03_drk/eventide",item_name={"translate":"skill.03_drk.lb.name"},\
lore=[{translate:"skill.03_drk.lb.lore.0",color:"gray",italic:false},{translate:"skill.03_drk.lb.lore.1",color:"gray",italic:false},\
[{translate:"skill.common.range.10m",color:"aqua",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.area.10m",color:"aqua",italic:false}],\
[{translate:"skill.common.cast.instant",color:"green",italic:false},{text:" / ",color:"gray",italic:false},{translate:"skill.common.recast.10sec",color:"light_purple",italic:false}]]]
# Attribute
execute as @p at @s run attribute @s max_health base set 100
execute as @p at @s run attribute @s movement_speed modifier add ho9tocraft:job_movement_env -0.05 add_multiplied_total
execute as @p at @s run effect give @s instant_health 60 3 true
