# アクション
# --ナイト--

# --共通--
execute as @e at @s run function ho9tocraft:skills/common/sprint_act

# --後処理--
execute as @e at @s if score @s clickHB1 matches 1.. run scoreboard players set @s clickHB1 0
execute as @e at @s if score @s clickHB2 matches 1.. run scoreboard players set @s clickHB2 0
execute as @e at @s if score @s clickHB3 matches 1.. run scoreboard players set @s clickHB3 0
execute as @e at @s if score @s clickHB5 matches 1.. run scoreboard players set @s clickHB5 0
execute as @e at @s if score @s clickHB6 matches 1.. run scoreboard players set @s clickHB6 0
execute as @e at @s if score @s clickHB7 matches 1.. run scoreboard players set @s clickHB7 0
execute as @e at @s if score @s clickHB8 matches 1.. run scoreboard players set @s clickHB8 0
