# Vault Reset
# 1. 青陣営側
data merge block -262 67 -43 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -262 67 -25 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -261 55 -34 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -261 62 -23 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -254 55 -23 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -242 55 -23 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -223 55 -34 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -242 55 -45 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -254 55 -45 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -230 45 23 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
# 2. 工場
data merge block -256 60 57 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
# 3. 赤陣営側
data merge block -322 56 117 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -308 66 113 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -333 67 117 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -333 67 117 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
data merge block -347 71 112 {server_data:{rewarded_players:[]},config:{loot_table:"ho9tocraft:vault"}}
# 4. tellraw
tellraw @a [{translate:"info.vault_reset.text",color:"gold"}]
