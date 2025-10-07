execute as @a[tag=reset,scores={LOGOUT=1..}] run tag @s remove reset
execute as @a[tag=!login] run function ho9tocraft:utils/login_first
execute as @a[tag=login,scores={LOGOUT=1..}] run function ho9tocraft:utils/login_continue
