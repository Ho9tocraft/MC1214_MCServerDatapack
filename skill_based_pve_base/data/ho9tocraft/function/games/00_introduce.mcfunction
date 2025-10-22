tellraw @s [{text:"Tips",color:"aqua"}]
tellraw @s [{translate:"To use a skill, please %1$s.",with:[{keybind:"key.use",underlined:true,color:"#32cd32"}],color:"green"}]
tellraw @s [{translate:"Once the %1$s gauge reaches 100, you can use %1$s. \nThe %1$s gauge accumulates over time and through the use of certain skills.",with:[{text:"LIMIT BREAK",color:"gold"}],color:"gray"}]
effect give @s resistance 30 4 true
effect give @s saturation 600 4 false
