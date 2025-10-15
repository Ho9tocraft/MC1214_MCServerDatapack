# INITIALIZER
# SCOREDATA INIT
scoreboard objectives add sbpvp_init dummy
scoreboard objectives add LOGOUT minecraft.custom:minecraft.leave_game
scoreboard objectives add kills playerKillCount
scoreboard objectives add deaths deathCount
scoreboard objectives add KillDeathRate dummy
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
