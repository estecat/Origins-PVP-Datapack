## Leave
# Parkour
execute as @a positioned 311 29 -319 if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tag @s add lobby-pad.out
execute as @a positioned 311 29 -319 if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tp @s 410 23 -265

# Command Plate
execute as @a positioned 335 34 -294 if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tag @s add lobby-pad.out
execute as @a positioned 335 34 -294 if entity @s[dx=1,dz=1,tag=!lobby-pad.in] run tp @s 312 -63 -73

execute as @a positioned 335 34 -294 unless entity @s[dx=1,dz=1] positioned 311 29 -319 unless entity @s[dx=1,dz=1] run tag @s remove lobby-pad.in


## Return
# Parkour
execute as @a positioned 409 23 -266 if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tag @s add lobby-pad.in
execute as @a positioned 409 23 -266 if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tp @s 312 29 -318

# Command Plate
execute as @a positioned 311 -63 -74 if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tag @s add lobby-pad.in
execute as @a positioned 311 -63 -74 if entity @s[dx=1,dz=1,tag=!lobby-pad.out] run tp @s 336 34 -293

execute as @a positioned 409 23 -266 unless entity @s[dx=1,dz=1] positioned 311 -63 -74 unless entity @s[dx=1,dz=1] run tag @s remove lobby-pad.out