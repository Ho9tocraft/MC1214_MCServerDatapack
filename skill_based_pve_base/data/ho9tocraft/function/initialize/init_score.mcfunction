# ログイン時初期化
scoreboard objectives add scoreInitialize dummy
# ジョブID
scoreboard objectives add jobID dummy
# クリックコマンド
scoreboard objectives add clickHB1 used:orange_dye
scoreboard objectives add clickHB2 used:red_dye
scoreboard objectives add clickHB3 used:white_dye
scoreboard objectives add clickHB5 used:honey_bottle
scoreboard objectives add clickHB6 used:black_dye
scoreboard objectives add clickHB7 used:magma_cream
scoreboard objectives add clickHB8 used:gray_dye
# コンボ中断条件(0になったらコンボ中断)
scoreboard objectives add expireCombo dummy
# ジョブ固有スコア
scoreboard objectives add PLD_Oath dummy

# チーム
team add PLAYER [{translate:"ffxiv.party.player.name",fallback:"Player"}]
team modify PLAYER collisionRule pushOtherTeams
team modify PLAYER deathMessageVisibility hideForOtherTeams
team modify PLAYER friendlyFire false
team modify PLAYER seeFriendlyInvisibles true
team modify PLAYER color aqua
team add ENEMY [{translate:"ffxiv.party.enemy.name",fallback:"Enemy"}]
team modify ENEMY collisionRule pushOtherTeams
team modify ENEMY deathMessageVisibility hideForOtherTeams
team modify ENEMY friendlyFire false
team modify ENEMY seeFriendlyInvisibles true
team modify ENEMY color red
