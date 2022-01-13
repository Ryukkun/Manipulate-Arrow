
# 矢の最初だけの処理
execute as @e[type=arrow,tag=!Loaded] if data entity @s Owner at @s run function manipulate-arrow:load-arrow

# Motion代入
execute as @e[tag=ILoveArrowM] run function manipulate-arrow:calc/calc-motion

# Particle
execute at @e[type=minecraft:arrow,scores={ArrowMember=1..}] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.02 1 force

# kill arrow
kill @e[type=arrow,nbt={inGround:1b}]