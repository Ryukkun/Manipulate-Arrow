# ArrowMember
execute store result score @s ArrowMember run scoreboard players get @p ArrowMember
# Glowing
data merge entity @s {Glowing:1b}
# 初速計算
function manipulate-arrow:calc-speed
#team join
team join Purple @s

## Tag
tag @s add Loaded