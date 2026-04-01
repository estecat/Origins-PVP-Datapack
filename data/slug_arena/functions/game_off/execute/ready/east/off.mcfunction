# Counter
execute unless score east-once var-ready matches -2 run scoreboard players set east-once var-ready 2
execute if score east-once var-ready matches 2 run scoreboard players remove count var-ready 1
execute if score east-once var-ready matches 2 run scoreboard players set east-once var-ready -2

# Lights
title @a[tag=player.east] actionbar ""
fill 349 98 -75 350 98 -75 minecraft:red_stained_glass
fill 349 98 -71 350 98 -71 minecraft:red_stained_glass
fill 349 97 -75 350 97 -75 minecraft:shroomlight
fill 349 97 -71 350 97 -71 minecraft:shroomlight

# Glow
team remove east.ready
execute run effect clear @a[tag=player.east] minecraft:glowing

# Title
title @a[tag=player.east] clear
