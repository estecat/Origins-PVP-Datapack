execute as @e[type=#slugterra:slug,name=North] at @s run particle dust 1 1 1 0.2 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.north]
execute as @e[type=#slugterra:slug,name=South] at @s run particle dust 1 1 1 0.2 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.south]
execute as @e[type=#slugterra:slug,name=East] at @s run particle dust 1 1 1 0.2 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.east]
execute as @e[type=#slugterra:slug,name=West] at @s run particle dust 1 1 1 0.2 ~ ~ ~ 0.1 0.1 0.1 2 1 force @a[tag=player.west]


#execute as @e[type=#slugterra:slug,name=North] at @s run particle firework ~ ~ ~ 0 1 0 0 0
#force @a[tag=player.north]
#execute as @e[type=#slugterra:slug,name=South] at @s run particle firework ~ ~ ~ 0 1 0 0 0
#force @a[tag=player.south]
#execute as @e[type=#slugterra:slug,name=East] at @s run particle firework ~ ~ ~ 0 1 0 0 0
#force @a[tag=player.east]
#execute as @e[type=#slugterra:slug,name=West] at @s run particle firework ~ ~ ~ 0 1 0 0 0
#force @a[tag=player.west]