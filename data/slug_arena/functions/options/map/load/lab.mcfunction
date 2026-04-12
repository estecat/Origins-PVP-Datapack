kill @e[type=minecraft:end_crystal]

# Clone
clone 512 -6 -207 580 -1 -139 278 85 -107
clone 512 0 -207 580 5 -139 278 91 -107
clone 512 6 -207 580 11 -139 278 97 -107
clone 512 12 -207 580 17 -139 278 103 -107
clone 512 18 -207 580 23 -139 278 109 -107
clone 512 24 -207 580 29 -139 278 115 -107
clone 512 30 -207 580 35 -139 278 121 -107
clone 512 36 -207 580 41 -139 278 127 -107
clone 512 42 -207 580 47 -139 278 133 -107

# Bottom
clone 511 -60 -208 581 -55 -138 277 31 -108
clone 511 -54 -208 581 -49 -138 277 37 -108
clone 511 -48 -208 581 -43 -138 277 43 -108
clone 511 -42 -208 581 -37 -138 277 49 -108
clone 511 -36 -208 581 -31 -138 277 55 -108
clone 511 -30 -208 581 -25 -138 277 61 -108
clone 511 -24 -208 581 -19 -138 277 67 -108
clone 511 -18 -208 581 -13 -138 277 73 -108
clone 511 -12 -208 581 -7 -138 277 79 -108

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

setblock 278 95 -106 redstone_block

summon marker 312 93.0 -73 {Tags:["lab.jump"],data:{name:"lab.jump"}}

summon marker 298 99.0 -102 {Tags:["lab.pad", "lab.pad.north"],data:{name:"lab.pad.north"}}
summon marker 326 99.0 -102 {Tags:["lab.pad", "lab.pad.north"],data:{name:"lab.pad.north"}}
summon marker 312 100.0 -81 {Tags:["lab.pad", "lab.pad.north.back"],data:{name:"lab.pad.north.back"}}

summon marker 326 99.0 -44 {Tags:["lab.pad", "lab.pad.south"],data:{name:"lab.pad.south"}}
summon marker 298 99.0 -44 {Tags:["lab.pad", "lab.pad.south"],data:{name:"lab.pad.south"}}
summon marker 312 100.0 -65 {Tags:["lab.pad", "lab.pad.south.back"],data:{name:"lab.pad.south.back"}}

summon marker 341 99.0 -87 {Tags:["lab.pad", "lab.pad.east"],data:{name:"lab.pad.east"}}
summon marker 341 99.0 -59 {Tags:["lab.pad", "lab.pad.east"],data:{name:"lab.pad.east"}}
summon marker 320 100.0 -73 {Tags:["lab.pad", "lab.pad.east.back"],data:{name:"lab.pad.east.back"}}

summon marker 283 99.0 -59 {Tags:["lab.pad", "lab.pad.west"],data:{name:"lab.pad.west"}}
summon marker 283 99.0 -87 {Tags:["lab.pad", "lab.pad.west"],data:{name:"lab.pad.west"}}
summon marker 304 100.0 -73 {Tags:["lab.pad", "lab.pad.west.back"],data:{name:"lab.pad.west.back"}}

# End
scoreboard players set map var-game 3
data modify storage slug_arena:settings map set value "§bThe Lab"