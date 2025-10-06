execute as @s run data merge storage ho9tocraft:user_data {OwnerUUID:[I;0,0,0,0],id:"",consumable:{consume_seconds:0,animation:"",sound:"",has_consume_particles:false},custom_data:{}}
execute as @s run data modify storage ho9tocraft:user_data OwnerUUID set from entity @s UUID
execute as @s run data modify storage ho9tocraft:user_data id set from entity @s SelectedItem.id
execute as @s run data modify storage ho9tocraft:user_data custom_data set from entity @s SelectedItem.components."minecraft:custom_data"
execute as @s run data modify storage ho9tocraft:user_data consumable set from entity @s SelectedItem.components."minecraft:consumable"
