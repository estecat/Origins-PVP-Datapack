# Counter
execute unless score north-once var-ready matches -2 run scoreboard players set north-once var-ready 2
execute if score north-once var-ready matches 2 run scoreboard players remove count var-ready 1
execute if score north-once var-ready matches 2 run scoreboard players set north-once var-ready -2

# Lights
title @a[tag=player.north] actionbar ""
fill 310 98 -111 310 98 -110 minecraft:red_stained_glass
fill 314 98 -111 314 98 -110 minecraft:red_stained_glass
fill 310 97 -111 310 97 -110 minecraft:shroomlight
fill 314 97 -111 314 97 -110 minecraft:shroomlight

# Glow
team remove north.ready
effect clear @a[tag=player.north] minecraft:glowing

# Title
title @a[tag=player.north] clear
