execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~1 ~ ~ 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~ ~ ~1 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~-1 ~ ~ 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~ ~ ~-1 0 1 0 0.6 0

execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~0.65 ~ ~0.65 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~-0.65 ~ ~0.65 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~0.65 ~ ~-0.65 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.condenser] at @s run particle cloud ~-0.65 ~ ~-0.65 0 1 0 0.6 0

execute as @e[type=marker,tag=kowloon.condenser] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-kowloon matches ..0 run data modify entity @s Motion[1] set value 1.115
execute as @e[type=marker,tag=kowloon.condenser] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-kowloon matches ..0 run scoreboard players set @s var-kowloon 5

execute as @e[type=marker,tag=kowloon.tube.east] at @s run particle cloud ~.5 ~ ~ 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.tube.west] at @s run particle cloud ~-.5 ~ ~ 0 1 0 0.6 0

execute as @e[type=marker,tag=kowloon.tube] at @s positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dz=0] if score @s var-kowloon matches ..0 run data modify entity @s Motion[1] set value 1.5
execute as @e[type=marker,tag=kowloon.tube] at @s positioned ~-0.5 ~ ~-0.5 as @a[dx=0,dz=0] if score @s var-kowloon matches ..0 run scoreboard players set @s var-kowloon 5

execute as @a unless score @s var-kowloon matches ..0 run scoreboard players remove @s var-kowloon 1