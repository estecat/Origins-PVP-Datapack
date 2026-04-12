execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~1 ~ ~ 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~ ~ ~1 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~-1 ~ ~ 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~ ~ ~-1 0 1 0 0.6 0

execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~0.65 ~ ~0.65 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~-0.65 ~ ~0.65 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~0.65 ~ ~-0.65 0 1 0 0.6 0
execute as @e[type=marker,tag=kowloon.vent] at @s run particle cloud ~-0.65 ~ ~-0.65 0 1 0 0.6 0

execute as @e[type=marker,tag=kowloon.vent] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-kowloon matches ..0 run data modify entity @s Motion[1] set value 1.115
execute as @e[type=marker,tag=kowloon.vent] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-kowloon matches ..0 run scoreboard players set @s var-kowloon 5

execute as @a unless score @s var-kowloon matches ..0 run scoreboard players remove @s var-kowloon 1