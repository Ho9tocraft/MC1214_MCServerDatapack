scoreboard players set @s LOGOUT 0
execute unless score @s limit_break = @s limit_break run scoreboard players set @s limit_break 0
tellraw @s [{text:"Welcome back to ",color: "white"},{text:"Job-Based PvP Server", color: "gold", bold: true},{text:", ", color: "white"},{selector:"@s",color:"green"},{text:"!",color:"white"}]
