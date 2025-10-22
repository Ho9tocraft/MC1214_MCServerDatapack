# INITIALIZER
# SCOREDATA INIT
scoreboard objectives add sbpvp_init dummy
scoreboard objectives add LOGOUT minecraft.custom:minecraft.leave_game
scoreboard objectives add kills playerKillCount
scoreboard objectives add deaths deathCount
scoreboard objectives add KillDeathRate dummy
# キルスコア
scoreboard objectives add kdrate_red dummy
scoreboard objectives add kdrate_blu dummy
# 戦力スコア
scoreboard objectives add warscore_red dummy
scoreboard objectives add warscore_blu dummy
# JOB ID
scoreboard objectives add job_id dummy
# LIMIT BREAK
scoreboard objectives add limit_break dummy
# Damage Helper
scoreboard objectives add DAMAGE_HELPER dummy
scoreboard objectives add DAMAGE_HELPER_2 dummy
scoreboard objectives add DAMAGE_CATEGORY dummy
# Ticking
scoreboard objectives add tick dummy
scoreboard objectives add tps dummy
scoreboard objectives add sec_count dummy
# Iterator
scoreboard objectives add iterator dummy
# Using Item
scoreboard objectives add click_red minecraft.used:minecraft.red_dye
scoreboard objectives add click_orange minecraft.used:minecraft.orange_dye
scoreboard objectives add click_yellow minecraft.used:minecraft.yellow_dye
scoreboard objectives add click_white minecraft.used:minecraft.white_dye
# Stage ID
scoreboard objectives add stage_id dummy
# Game Mode
scoreboard objectives add game_mode dummy
# Stage Info
# 1. 残り秒数
scoreboard objectives add st_pcount_time dummy
scoreboard objectives add st_tcount_time dummy
scoreboard objectives add st_tcount_ref dummy
# 2. 宝物庫リセットタイミング
scoreboard objectives add st_vreset_calc dummy
scoreboard objectives add st_vreset_ref dummy
# 3. ステージコンディション
scoreboard objectives add stage_condition dummy

# Team
team add RED
team add BLU
team add MOB

team modify RED collisionRule pushOtherTeams
team modify RED color red
team modify RED deathMessageVisibility hideForOtherTeams
team modify RED friendlyFire false
team modify RED nametagVisibility hideForOtherTeams
team modify RED prefix {text:"[RED]",color:"red"}
team modify BLU collisionRule pushOtherTeams
team modify BLU color blue
team modify BLU deathMessageVisibility hideForOtherTeams
team modify BLU friendlyFire false
team modify BLU nametagVisibility hideForOtherTeams
team modify BLU prefix {text:"[BLU]",color:"blue"}
team modify MOB collisionRule pushOtherTeams
team modify MOB color dark_gray
team modify MOB deathMessageVisibility always
team modify MOB friendlyFire false
team modify MOB nametagVisibility always
team modify MOB prefix {text:"[MOB]",color:"dark_gray"}

# DAMAGE CALCULATE STORAGE INIT
data merge storage ffxiv:damage_path {target:[I;0,0,0,0],owner:[I;0,0,0,0],damage_amount:0}
# HELPER Utils
scoreboard players set ^TDHelper tick 0
scoreboard players set ^TDHelper DAMAGE_CATEGORY 0
scoreboard players set ^TDHelper tps 20
scoreboard players set ^TDHelper sec_count 0
scoreboard players set ^TDHelper iterator 0

scoreboard players set ^TDHelper stage_id 0
scoreboard players set ^TDHelper st_tcount_time -2
scoreboard players set ^TDHelper st_tcount_ref 600
scoreboard players set ^TDHelper st_vreset_calc -1
scoreboard players set ^TDHelper st_vreset_ref 120
# -2: Lobby / -1: Prepare / 0: In Battle / 1: Overtime / 2: Finish
scoreboard players set ^TDHelper stage_condition -2
# 0: キルスコア / 1: 戦力スコア / 2: クリスタルコンフリクト
scoreboard players set ^TDHelper game_mode 0
# キルスコア
scoreboard players set ^TDHelper kdrate_red 0
scoreboard players set ^TDHelper kdrate_blu 0
# 戦力スコア
scoreboard players set ^TDHelper warscore_red 0
scoreboard players set ^TDHelper warscore_blu 0

# Bossbar add
bossbar add ho9tocraft:time_prepare {translate:"ui.prepare_time.info"}
bossbar add ho9tocraft:time_battle {translate:"ui.battle_time.info"}
bossbar set ho9tocraft:time_prepare max 30
bossbar set ho9tocraft:time_prepare color purple
bossbar set ho9tocraft:time_prepare style progress
bossbar set ho9tocraft:time_prepare visible false
bossbar set ho9tocraft:time_battle color red
bossbar set ho9tocraft:time_battle style notched_6
bossbar set ho9tocraft:time_battle visible false
