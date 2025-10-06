# Using Item Sync
execute as @e[scores={sy_wooden_sw=1..}] run scoreboard players operation @s synced = @s sy_wooden_sw
execute as @e[scores={sy_stone_sw=1..}] run scoreboard players operation @s synced = @s sy_stone_sw
execute as @e[scores={sy_iron_sw=1..}] run scoreboard players operation @s synced = @s sy_iron_sw
execute as @e[scores={sy_golden_sw=1..}] run scoreboard players operation @s synced = @s sy_golden_sw
execute as @e[scores={sy_diamond_sw=1..}] run scoreboard players operation @s synced = @s sy_diamond_sw
execute as @e[scores={sy_netherite_sw=1..}] run scoreboard players operation @s synced = @s sy_netherite_sw
execute as @e[scores={sy_wooden_ax=1..}] run scoreboard players operation @s synced = @s sy_wooden_ax
execute as @e[scores={sy_stone_ax=1..}] run scoreboard players operation @s synced = @s sy_stone_ax
execute as @e[scores={sy_iron_ax=1..}] run scoreboard players operation @s synced = @s sy_iron_ax
execute as @e[scores={sy_golden_ax=1..}] run scoreboard players operation @s synced = @s sy_golden_ax
execute as @e[scores={sy_diamond_ax=1..}] run scoreboard players operation @s synced = @s sy_diamond_ax
execute as @e[scores={sy_netherite_ax=1..}] run scoreboard players operation @s synced = @s sy_netherite_ax
execute as @e[scores={sy_wooden_sh=1..}] run scoreboard players operation @s synced = @s sy_wooden_sh
execute as @e[scores={sy_stone_sh=1..}] run scoreboard players operation @s synced = @s sy_stone_sh
execute as @e[scores={sy_iron_sh=1..}] run scoreboard players operation @s synced = @s sy_iron_sh
execute as @e[scores={sy_golden_sh=1..}] run scoreboard players operation @s synced = @s sy_golden_sh
execute as @e[scores={sy_diamond_sh=1..}] run scoreboard players operation @s synced = @s sy_diamond_sh
execute as @e[scores={sy_netherite_sh=1..}] run scoreboard players operation @s synced = @s sy_netherite_sh
execute as @e[scores={sy_wooden_hp=1..}] run scoreboard players operation @s synced = @s sy_wooden_hp
execute as @e[scores={sy_stone_hp=1..}] run scoreboard players operation @s synced = @s sy_stone_hp
execute as @e[scores={sy_iron_hp=1..}] run scoreboard players operation @s synced = @s sy_iron_hp
execute as @e[scores={sy_golden_hp=1..}] run scoreboard players operation @s synced = @s sy_golden_hp
execute as @e[scores={sy_diamond_hp=1..}] run scoreboard players operation @s synced = @s sy_diamond_hp
execute as @e[scores={sy_netherite_hp=1..}] run scoreboard players operation @s synced = @s sy_netherite_hp

execute as @e run execute as @s store result score @s atk_dmg_val run attribute @s minecraft:attack_damage get 1.0
execute as @e[type=player] store success score @s has_item run data get entity @s SelectedItem
execute as @e[type=player,scores={has_item=1..}] run function ho9tocraft:utils/sync_item
