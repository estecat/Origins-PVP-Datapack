# Counter
execute unless score west-once var-ready matches -2 run scoreboard players set west-once var-ready 2
execute if score west-once var-ready matches 2 run scoreboard players remove count var-ready 1
execute if score west-once var-ready matches 2 run scoreboard players set west-once var-ready -2

# Lights
title @a[tag=player.west] actionbar ""
fill 274 98 -75 275 98 -75 minecraft:red_stained_glass
fill 274 98 -71 275 98 -71 minecraft:red_stained_glass
fill 274 97 -75 275 97 -75 minecraft:shroomlight
fill 274 97 -71 275 97 -71 minecraft:shroomlight

# Glow
team remove west.ready
effect clear @a[tag=player.west] minecraft:glowing

# Title
title @a[tag=player.west] clear
