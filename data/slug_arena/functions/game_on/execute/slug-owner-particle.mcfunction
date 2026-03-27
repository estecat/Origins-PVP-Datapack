execute as @e[type=#slugterra:slug,name=Green] at @s run particle dust 0.2 1 0.2 0.2 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.north]
execute as @e[type=#slugterra:slug,name=Yellow] at @s run particle dust 1 1 0 0.2 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.south]
execute as @e[type=#slugterra:slug,name=Red] at @s run particle dust 1 0 0 0.2 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.east]
execute as @e[type=#slugterra:slug,name=Blue] at @s run particle dust 0.2 0.7 1 0.3 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.west]