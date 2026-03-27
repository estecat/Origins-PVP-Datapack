# Counter
execute unless score ready.south flag matches -1 run scoreboard players set ready.south flag 1
execute if score ready.south flag matches 1 run scoreboard players add ready.players variable 1
execute if score ready.south flag matches 1 run tellraw @a {"text": "Yellow is ready!", "color": "yellow"}
execute if score ready.south flag matches 1 run scoreboard players set ready.south flag -1

# Lights
title @a[tag=player.south] actionbar {"text":"READY","color":"green"}
fill 310 98 -36 310 98 -35 minecraft:green_stained_glass
fill 314 98 -36 314 98 -35 minecraft:green_stained_glass
fill 310 97 -36 310 97 -35 minecraft:sea_lantern
fill 314 97 -36 314 97 -35 minecraft:sea_lantern

# Glow
team add south.ready
team modify south.ready color green
team join south.ready @a[tag=player.south]
effect give @a[tag=player.south] minecraft:glowing 1 1 true

# Sound
execute if score ready.sound.south flag matches 0 run scoreboard players set ready.sound.south flag 1
execute if score ready.sound.south flag matches 1 run playsound slug_arena:ready master @a 312 99 -36
execute if score ready.sound.south flag matches 1 run scoreboard players set ready.sound.south flag -1