## Leave
# Parkour
execute positioned 311 29 -319 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tag @s add lobby-pad.out
execute positioned 311 29 -319 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tp @s 410 23 -265

# Command Plate
execute positioned 335 34 -294 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tag @s add lobby-pad.out
execute positioned 335 34 -294 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tp @s 312 -63 -73

execute positioned 335 34 -294 as @a unless entity @s[dx=1,dz=1] positioned 311 29 -319 as @a unless entity @s[dx=1,dz=1] run tag @s remove lobby-pad.in


## Return
# Parkour
execute positioned 409 23 -266 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tag @s add lobby-pad.in
execute positioned 409 23 -266 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tp @s 312 29 -318

# Command Plate
execute positioned 311 -63 -74 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tag @s add lobby-pad.in
execute positioned 311 -63 -74 as @a if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tp @s 336 34 -293

execute positioned 409 23 -266 as @a unless entity @s[dx=1,dz=1] positioned 311 -63 -74 as @a unless entity @s[dx=1,dz=1] run tag @s remove lobby-pad.out