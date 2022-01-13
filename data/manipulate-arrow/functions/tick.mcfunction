
# 矢の最初だけの処理
execute as @e[type=arrow,tag=!Loaded] run function manipulate-arrow:load-arrow

# Motion代入
function manipulate-arrow:main

# Particle
execute at @e[type=minecraft:arrow] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.02 1 force

# kill arrow
kill @e[type=arrow,nbt={inGround:1b}]