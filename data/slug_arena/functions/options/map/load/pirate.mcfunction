# 512 50 -133 - 580 103 -65


kill @e[type=minecraft:end_crystal]

# Clone
clone 512 50 -133 580 55 -65 278 85 -107
clone 512 56 -133 580 61 -65 278 91 -107
clone 512 62 -133 580 67 -65 278 97 -107
clone 512 68 -133 580 73 -65 278 103 -107
clone 512 74 -133 580 79 -65 278 109 -107
clone 512 80 -133 580 85 -65 278 115 -107
clone 512 86 -133 580 91 -65 278 121 -107
clone 512 92 -133 580 97 -65 278 127 -107
clone 512 98 -133 580 103 -65 278 133 -107

# Biome
fillbiome 346 89 -39 278 84 -107 minecraft:plains
fillbiome 346 90 -39 278 95 -107 minecraft:plains
fillbiome 346 96 -39 278 101 -107 minecraft:plains
fillbiome 346 102 -39 278 107 -107 minecraft:plains
fillbiome 346 108 -39 278 113 -107 minecraft:plains
fillbiome 346 114 -39 278 119 -107 minecraft:plains
fillbiome 346 120 -39 278 125 -107 minecraft:plains
fillbiome 346 126 -39 278 131 -107 minecraft:plains
fillbiome 346 137 -39 278 132 -107 minecraft:plains

# End
scoreboard players set map var-game 4
data modify storage slug_arena:settings map set value "§5Legacy"