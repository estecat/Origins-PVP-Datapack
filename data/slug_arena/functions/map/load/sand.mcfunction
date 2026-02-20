# Clone
clone 512 -6 15 580 -1 83 278 85 -107
clone 512 0 15 580 5 83 278 91 -107
clone 512 6 15 580 11 83 278 97 -107
clone 512 12 15 580 17 83 278 103 -107
clone 512 18 15 580 23 83 278 109 -107
clone 512 24 15 580 29 83 278 115 -107
clone 512 30 15 580 35 83 278 121 -107
clone 512 36 15 580 41 83 278 127 -107
clone 512 42 15 580 47 83 278 133 -107

# Biome
fillbiome 346 89 -39 278 84 -107 minecraft:desert
fillbiome 346 90 -39 278 95 -107 minecraft:desert
fillbiome 346 96 -39 278 101 -107 minecraft:desert
fillbiome 346 102 -39 278 107 -107 minecraft:desert
fillbiome 346 108 -39 278 113 -107 minecraft:desert
fillbiome 346 114 -39 278 119 -107 minecraft:desert
fillbiome 346 120 -39 278 125 -107 minecraft:desert
fillbiome 346 126 -39 278 131 -107 minecraft:desert
fillbiome 346 137 -39 278 132 -107 minecraft:desert

# Misc
scoreboard players set map-number variable 6
kill @e[type=minecraft:end_crystal]