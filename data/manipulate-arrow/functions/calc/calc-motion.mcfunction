execute at @a if score @s ArrowMember = @p ArrowMember run tp @s @p
execute store result score @s ArrowPosX run data get entity @s Pos[0] 1000
execute store result score @s ArrowPosY run data get entity @s Pos[1] 1000
execute store result score @s ArrowPosZ run data get entity @s Pos[2] 1000

#tp
execute at @s run function manipulate-arrow:tp/tp

execute store result score @s ArrowPosX2 run data get entity @s Pos[0] 1000
execute store result score @s ArrowPosY2 run data get entity @s Pos[1] 1000
execute store result score @s ArrowPosZ2 run data get entity @s Pos[2] 1000
scoreboard players operation @s ArrowPosX2 -= @s ArrowPosX
scoreboard players operation @s ArrowPosY2 -= @s ArrowPosY
scoreboard players operation @s ArrowPosZ2 -= @s ArrowPosZ
scoreboard players set @s ArrowPosX 0
execute store success score @s ArrowPosX at @e[type=arrow] if score @s ArrowMember = @e[type=arrow,distance=0,limit=1] ArrowMember if score @s ArrowSpeed = @e[type=arrow,limit=1,distance=0] ArrowSpeed run function manipulate-arrow:store-motion
kill @s[scores={ArrowPosX=0}]