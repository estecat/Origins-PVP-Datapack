# Counter
scoreboard players set south-once var-ready 0

# Lights
title @a[tag=player.south] actionbar ""
fill 310 98 -36 310 98 -35 minecraft:red_stained_glass
fill 314 98 -36 314 98 -35 minecraft:red_stained_glass
fill 310 97 -36 310 97 -35 minecraft:shroomlight
fill 314 97 -36 314 97 -35 minecraft:shroomlight

# Glow
team remove south.ready
effect clear @a[tag=player.south] minecraft:glowing

# Title
execute if score south var-ready matches 0 run title @a[tag=player.south] clear
