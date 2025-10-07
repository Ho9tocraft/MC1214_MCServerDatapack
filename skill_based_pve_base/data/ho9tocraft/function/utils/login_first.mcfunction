tag @s add login
scoreboard players set @s LOGOUT 0
tellraw @s ["",{text:"Welcome to ",color:"white"},{text:"Job-Based PvP Server", color: "gold", bold: true},{text:", ", color: "white"},{selector:"@s",color:"green"},{text:"!\n",color:"white"},{text:"First, please read the rules.", underlined: true, color: "aqua"}]
