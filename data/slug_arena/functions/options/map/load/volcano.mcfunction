kill @e[type=minecraft:end_crystal]

# Clone
clone 512 -6 -281 580 -1 -213 278 85 -107
clone 512 0 -281 580 5 -213 278 91 -107
clone 512 6 -281 580 11 -213 278 97 -107
clone 512 12 -281 580 17 -213 278 103 -107
clone 512 18 -281 580 23 -213 278 109 -107
clone 512 24 -281 580 29 -213 278 115 -107
clone 512 30 -281 580 35 -213 278 121 -107
clone 512 36 -281 580 41 -213 278 127 -107
clone 512 42 -281 580 47 -213 278 133 -107

# Biome
fillbiome 346 89 -39 278 84 -107 minecraft:basalt_deltas
fillbiome 346 90 -39 278 95 -107 minecraft:basalt_deltas
fillbiome 346 96 -39 278 101 -107 minecraft:basalt_deltas
fillbiome 346 102 -39 278 107 -107 minecraft:basalt_deltas
fillbiome 346 108 -39 278 113 -107 minecraft:basalt_deltas
fillbiome 346 114 -39 278 119 -107 minecraft:basalt_deltas
fillbiome 346 120 -39 278 125 -107 minecraft:basalt_deltas
fillbiome 346 126 -39 278 131 -107 minecraft:basalt_deltas
fillbiome 346 137 -39 278 132 -107 minecraft:basalt_deltas

# End
scoreboard players set map var-game 2
data modify storage slug_arena:settings map set value "§cVolcanic Cave"