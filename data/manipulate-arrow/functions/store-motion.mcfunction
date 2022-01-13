execute store result entity @e[type=arrow,distance=0,limit=1] Motion[0] double 0.001 run scoreboard players get @s ArrowPosX2 
execute store result entity @e[type=arrow,distance=0,limit=1] Motion[1] double 0.001 run scoreboard players get @s ArrowPosY2 
execute store result entity @e[type=arrow,distance=0,limit=1] Motion[2] double 0.001 run scoreboard players get @s ArrowPosZ2 

#念のためね
#execute as @e[tag=ILoveArrowM] at @e[type=arrow] if score @s ArrowMember = @e[type=arrow,sort=nearest,limit=1] ArrowMember if score @s ArrowSpeed = @e[type=arrow,sort=nearest,limit=1,distance=..0.000001] ArrowSpeed store result entity @e[type=arrow,sort=nearest,limit=1] Motion[0] double 0.001 run scoreboard players get @s ArrowPosX2 
#execute as @e[tag=ILoveArrowM] at @e[type=arrow] if score @s ArrowMember = @e[type=arrow,sort=nearest,limit=1] ArrowMember if score @s ArrowSpeed = @e[type=arrow,sort=nearest,limit=1,distance=..0.000001] ArrowSpeed store result entity @e[type=arrow,sort=nearest,limit=1] Motion[1] double 0.001 run scoreboard players get @s ArrowPosY2 
#execute as @e[tag=ILoveArrowM] at @e[type=arrow] if score @s ArrowMember = @e[type=arrow,sort=nearest,limit=1] ArrowMember if score @s ArrowSpeed = @e[type=arrow,sort=nearest,limit=1,distance=..0.000001] ArrowSpeed store result entity @e[type=arrow,sort=nearest,limit=1] Motion[2] double 0.001 run scoreboard players get @s ArrowPosZ2 