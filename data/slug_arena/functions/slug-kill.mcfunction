execute if score game.start variable matches 0 run execute as @e[type=#slugterra:slug] run tp @s 0 0 0
execute if score game.start variable matches 0 run execute as @e[type=#slugterra:velocimorph] run tp @s 0 0 0
execute if score game.start variable matches 0 run execute as @e[type=#slugterra:velocimorphabilityentity] run tp @s 0 0 0

execute if score game.start variable matches 0 run data modify entity @e[type=#slugterra:slug,limit=1] Health set value 0
execute if score game.start variable matches 0 run data modify entity @e[type=#slugterra:velocimorph,limit=1] Health set value 0
execute if score game.start variable matches 0 run data modify entity @e[type=#slugterra:velocimorphabilityentity,limit=1] Health set value 0