# JOB ID: 15(15)/en_US: Summoner/ja_JP: 召喚士
function ho9tocraft:jobs/00_job_purge
scoreboard players set @s job_id 15
# Armor
execute as @s at @s run item replace entity @s armor.head with leather_helmet[equippable={slot:"head",asset_id:"ho9tocraft:theogonic_caster_blm"},\
    attribute_modifiers=[{type:"armor",amount:3,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},\
    {type:"burning_time",amount:-0.05,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"}],unbreakable={},enchantments={binding_curse:1,protection:5,fire_protection:3},tooltip_display={hidden_components:["unbreakable"]}] 1
execute as @s at @s run item replace entity @s armor.head with leather_chestplate[equippable={slot:"chest",asset_id:"ho9tocraft:theogonic_caster_blm"},\
    attribute_modifiers=[{type:"armor",amount:3,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},\
    {type:"burning_time",amount:-0.05,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"}],unbreakable={},enchantments={binding_curse:1,protection:5,fire_protection:3},tooltip_display={hidden_components:["unbreakable"]}] 1
execute as @s at @s run item replace entity @s armor.head with leather_leggings[equippable={slot:"legs",asset_id:"ho9tocraft:theogonic_caster_blm"},\
    attribute_modifiers=[{type:"armor",amount:3,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},\
    {type:"burning_time",amount:-0.05,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"}],unbreakable={},enchantments={binding_curse:1,protection:5,fire_protection:3},tooltip_display={hidden_components:["unbreakable"]}] 1
execute as @s at @s run item replace entity @s armor.head with leather_boots[equippable={slot:"feet",asset_id:"ho9tocraft:theogonic_caster_blm"},\
    attribute_modifiers=[{type:"armor",amount:3,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},{type:"armor_toughness",amount:1,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"},\
    {type:"burning_time",amount:-0.05,operation:"add_value",id:"ho9tocraft:summoner_head",display:{type:"hidden"},slot:"armor"}],unbreakable={},enchantments={binding_curse:1,protection:5,fire_protection:3},tooltip_display={hidden_components:["unbreakable"]}] 1
# Main Weapon

