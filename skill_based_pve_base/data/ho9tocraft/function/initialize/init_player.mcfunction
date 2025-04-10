# プレイヤーデータ初期化
scoreboard players set @a scoreInitialize -1
# -- クリックコマンド --
execute as @a store success score @s scoreInitialize run scoreboard players get @s clickHB1
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s clickHB1 0
execute as @a store success score @s scoreInitialize run scoreboard players get @s clickHB2
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s clickHB2 0
execute as @a store success score @s scoreInitialize run scoreboard players get @s clickHB3
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s clickHB3 0
execute as @a store success score @s scoreInitialize run scoreboard players get @s clickHB5
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s clickHB5 0
execute as @a store success score @s scoreInitialize run scoreboard players get @s clickHB6
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s clickHB6 0
execute as @a store success score @s scoreInitialize run scoreboard players get @s clickHB7
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s clickHB7 0
execute as @a store success score @s scoreInitialize run scoreboard players get @s clickHB8
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s clickHB8 0
# -- ジョブID・コンボ中断 --
execute as @a store success score @s scoreInitialize run scoreboard players get @s jobID
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s jobID -1
execute as @a store success score @s scoreInitialize run scoreboard players get @s expireCombo
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s expireCombo 0
# ジョブ固有スコア
execute as @a store success score @s scoreInitialize run scoreboard players get @s PLD_Oath
execute as @a if score @s scoreInitialize matches 0 run scoreboard players set @s PLD_Oath 0
