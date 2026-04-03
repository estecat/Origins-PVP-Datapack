# Counter
scoreboard players set east-once var-ready 0

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
