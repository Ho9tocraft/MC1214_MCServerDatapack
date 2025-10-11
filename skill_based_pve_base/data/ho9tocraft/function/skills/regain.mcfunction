execute as @s at @s run effect give @s instant_health 1 0 false
execute as @s at @s run playsound minecraft:entity.breeze.deflect player @a[distance=..30] ~ ~ ~ 90 1.5
execute as @s at @s run particle end_rod ~ ~1 ~ 0.5 1 0.5 0 100 normal @a[distance=..30]
