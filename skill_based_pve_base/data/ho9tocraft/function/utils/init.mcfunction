# INITIALIZER
# SCOREDATA INIT
scoreboard objectives add sbpvp_init dummy
scoreboard objectives add LOGOUT minecraft.custom:minecraft.leave_game

# DAMAGE CALCULATE STORAGE INIT
data merge storage ffxiv:damage_path {target:[I;0,0,0,0],owner:[I;0,0,0,0],damage_amount:0,damage_type:""}
