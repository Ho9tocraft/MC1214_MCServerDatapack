# ブロックデータ変更
function ho9tocraft:stages/stage_01/reset_vault
## 赤拠点チェスト
data merge block -368 79 127 {Items:[]}
data merge block -368 79 126 {Items:[]}
## 青拠点チェスト
data merge block -199 90 -43 {Items:[]}
data merge block -200 90 -43 {Items:[]}
# スポーンポイント指定
execute as @a[team=RED] at @s run spawnpoint @s -366 79 126
execute as @a[team=BLU] at @s run spawnpoint @s -194 85 -46
