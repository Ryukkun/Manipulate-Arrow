execute as @e[type=arrow] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Marker:1b,Invisible:1b,Tags:[ILoveArrowM]}
execute as @e[type=arrow] at @s run scoreboard players operation @e[tag=ILoveArrowM,limit=1,sort=nearest] ArrowMember = @s ArrowMember
execute as @e[type=arrow] at @s run scoreboard players operation @e[tag=ILoveArrowM,limit=1,sort=nearest] ArrowSpeed = @s ArrowSpeed
execute as @e[tag=ILoveArrowM] run function manipulate-arrow:calc-motion