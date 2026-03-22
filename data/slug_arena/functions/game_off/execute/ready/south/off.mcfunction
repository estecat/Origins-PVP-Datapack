# Counter
execute unless score ready.south flag matches -2 run scoreboard players set ready.south flag 2
execute if score ready.south flag matches 2 run scoreboard players remove ready.players variable 1
execute if score ready.south flag matches 2 run scoreboard players set ready.south flag -2

# Lights
title @a[tag=player.south] actionbar ""
fill 310 98 -36 310 98 -35 minecraft:red_stained_glass
fill 314 98 -36 314 98 -35 minecraft:red_stained_glass
fill 310 97 -36 310 97 -35 minecraft:shroomlight
fill 314 97 -36 314 97 -35 minecraft:shroomlight

# Glow
team remove south.ready
effect clear @a[tag=player.south] minecraft:glowing

# Sound
scoreboard players set ready.sound.south flag 0

# Title
execute if score ready.south variable matches 0 run title @a[tag=player.south] clear
