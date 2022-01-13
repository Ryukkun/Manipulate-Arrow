### Copyright © 2021 赤石愛
### This software is released under the MIT License.
### https://opensource.org/licenses/MIT


#> math:sqrt/
# 平方根を求めます。入力は 0.00000001 から 100000000 まで。結果は有効数字4桁です。
## 入力: 実数(double) => storage math: in
## 出力: 平方根(double) => storage math: out

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

# 設定されない可能性のある値を初期化
scoreboard players set R AiMath -1
data modify storage math: out set value 0d

#追記
execute store result score @s ArrowPosX run data get entity @s Motion[0] 100
execute store result score @s ArrowPosY run data get entity @s Motion[1] 100
execute store result score @s ArrowPosZ run data get entity @s Motion[2] 100
scoreboard players operation @s ArrowPosX *= @s ArrowPosX
scoreboard players operation @s ArrowPosY *= @s ArrowPosY
scoreboard players operation @s ArrowPosZ *= @s ArrowPosZ
scoreboard players operation @s ArrowPosX += @s ArrowPosY
scoreboard players operation @s ArrowPosX += @s ArrowPosZ
execute store result storage math: in double 0.0001 run scoreboard players get @s ArrowPosX


# 入力に応じてスケール変更
execute store result score V AiMath run data get storage math: in 1
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 100
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 10000
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 1000000
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 100000000
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 10000000000
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 1000000000000
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 100000000000000
execute if score V AiMath matches ..999999 store result score V AiMath run data get storage math: in 10000000000000000

# 値に応じて1000の位設定
execute if score V AiMath matches 1000000.. run scoreboard players set R AiMath -1000
execute if score V AiMath matches 4000000.. run scoreboard players set R AiMath -2000
execute if score V AiMath matches 9000000.. run scoreboard players set R AiMath -3000
execute if score V AiMath matches 16000000.. run scoreboard players set R AiMath -4000
execute if score V AiMath matches 25000000.. run scoreboard players set R AiMath -5000
execute if score V AiMath matches 36000000.. run scoreboard players set R AiMath -6000
execute if score V AiMath matches 49000000.. run scoreboard players set R AiMath -7000
execute if score V AiMath matches 64000000.. run scoreboard players set R AiMath -8000
execute if score V AiMath matches 81000000.. run scoreboard players set R AiMath -9000

# 100の位を計算
scoreboard players operation _ AiMath = R AiMath
scoreboard players operation _ AiMath *= R AiMath
scoreboard players operation _ AiMath -= V AiMath
execute store result storage math:_ AiMath int 0.005 run scoreboard players operation _ AiMath /= R AiMath
execute store result score _ AiMath run data get storage math:_ AiMath 100
execute store result score R2 AiMath run scoreboard players operation R AiMath -= _ AiMath
# 予定より大きければ100引く
scoreboard players operation R2 AiMath *= R AiMath
execute if score R2 AiMath > V AiMath run scoreboard players add R AiMath 100

# 10の位を計算
scoreboard players operation _ AiMath = R AiMath
scoreboard players operation _ AiMath *= R AiMath
scoreboard players operation _ AiMath -= V AiMath
execute store result storage math:_ AiMath int 0.05 run scoreboard players operation _ AiMath /= R AiMath
execute store result score _ AiMath run data get storage math:_ AiMath 10
execute store result score R2 AiMath run scoreboard players operation R AiMath -= _ AiMath
# 予定より大きければ10引く
scoreboard players operation R2 AiMath *= R AiMath
execute if score R2 AiMath > V AiMath run scoreboard players add R AiMath 10

# 1の位を計算
scoreboard players operation _ AiMath = R AiMath
scoreboard players operation _ AiMath *= R AiMath
scoreboard players operation _ AiMath -= V AiMath
execute store result storage math:_ AiMath int 0.5 run scoreboard players operation _ AiMath /= R AiMath
execute store result score _ AiMath run data get storage math:_ AiMath 1
execute store result score R2 AiMath run scoreboard players operation R AiMath -= _ AiMath
# 予定より大きければ1引く
scoreboard players operation R2 AiMath *= R AiMath
execute if score R2 AiMath > V AiMath run scoreboard players add R AiMath 1

# 入力に応じてスケール変更
execute store result score V AiMath run data get storage math: in 1
execute if score V AiMath matches 1000000..100000000 store result storage math: out double -1 run scoreboard players get R AiMath
execute if score V AiMath matches 10000..999999 store result storage math: out double -0.1 run scoreboard players get R AiMath
execute if score V AiMath matches 100..9999 store result storage math: out double -0.01 run scoreboard players get R AiMath
execute if score V AiMath matches 1..99 store result storage math: out double -0.001 run scoreboard players get R AiMath

execute store result score V AiMath run data get storage math: in 100000000
execute if score V AiMath matches 1000000..99999999 store result storage math: out double -0.0001 run scoreboard players get R AiMath
execute if score V AiMath matches 10000..999999 store result storage math: out double -0.00001 run scoreboard players get R AiMath
execute if score V AiMath matches 100..9999 store result storage math: out double -0.000001 run scoreboard players get R AiMath
execute if score V AiMath matches 1..99 store result storage math: out double -0.0000001 run scoreboard players get R AiMath

# スコアボード削除
scoreboard objectives remove AiMath

# 追記
execute store result score @s ArrowSpeed run data get storage math: out 100
scoreboard players set @s[scores={ArrowSpeed=20..37}] ArrowSpeed 1
scoreboard players set @s[scores={ArrowSpeed=38..49}] ArrowSpeed 2
scoreboard players set @s[scores={ArrowSpeed=50..61}] ArrowSpeed 3
scoreboard players set @s[scores={ArrowSpeed=62..75}] ArrowSpeed 4
scoreboard players set @s[scores={ArrowSpeed=76..88}] ArrowSpeed 5
scoreboard players set @s[scores={ArrowSpeed=89..102}] ArrowSpeed 6
scoreboard players set @s[scores={ArrowSpeed=103..116}] ArrowSpeed 7
scoreboard players set @s[scores={ArrowSpeed=117..132}] ArrowSpeed 8
scoreboard players set @s[scores={ArrowSpeed=133..146}] ArrowSpeed 9
scoreboard players set @s[scores={ArrowSpeed=147..164}] ArrowSpeed 10
scoreboard players set @s[scores={ArrowSpeed=165..178}] ArrowSpeed 11
scoreboard players set @s[scores={ArrowSpeed=179..196}] ArrowSpeed 12
scoreboard players set @s[scores={ArrowSpeed=197..215}] ArrowSpeed 13
scoreboard players set @s[scores={ArrowSpeed=216..233}] ArrowSpeed 14
scoreboard players set @s[scores={ArrowSpeed=234..250}] ArrowSpeed 15
scoreboard players set @s[scores={ArrowSpeed=251..268}] ArrowSpeed 16
scoreboard players set @s[scores={ArrowSpeed=269..288}] ArrowSpeed 17
scoreboard players set @s[scores={ArrowSpeed=289..}] ArrowSpeed 18