$execute if score ^TDHelper DAMAGE_CATEGORY matches 1 run damage @e[nbt={UUID:$(target)},limit=1] $(damage_amount) minecraft:h9tdmg_phys by @e[nbt={UUID:$(owner)},limit=1]
$execute if score ^TDHelper DAMAGE_CATEGORY matches 2 run damage @e[nbt={UUID:$(target)},limit=1] $(damage_amount) minecraft:h9tdmg_magc by @e[nbt={UUID:$(owner)},limit=1]
$execute if score ^TDHelper DAMAGE_CATEGORY matches 3 run damage @e[nbt={UUID:$(target)},limit=1] $(damage_amount) minecraft:h9tdmg_extr by @e[nbt={UUID:$(owner)},limit=1]
scoreboard players set ^TDHelper DAMAGE_CATEGORY 0
