# ArrowMember
execute store result score @s ArrowMember run scoreboard players get @p ArrowMember
# data modify
data merge entity @s {NoGravity:1b}
data merge entity @s {Glowing:1b}
# 初速計算
function manipulate-arrow:calc-speed
#team join
team join Purple @s
# Motion代入用armor_stand
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:[ILoveArrowM]}
scoreboard players operation @e[tag=ILoveArrowM,limit=1,distance=..0.00001] ArrowMember = @s ArrowMember
scoreboard players operation @e[tag=ILoveArrowM,limit=1,distance=..0.00001] ArrowSpeed = @s ArrowSpeed
execute as @e[tag=ILoveArrowM,limit=1,sort=nearest] at @e[tag=ILoveArrowM,distance=0.00001..] if score @s ArrowMember = @e[tag=ILoveArrowM,limit=1,sort=nearest] ArrowMember if score @s ArrowSpeed = @e[tag=ILoveArrowM,limit=1,sort=nearest] ArrowSpeed run kill @s

## Tag
tag @s add Loaded