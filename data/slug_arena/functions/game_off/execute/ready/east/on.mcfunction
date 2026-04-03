# Counter
execute unless score east-once var-ready matches -1 run scoreboard players set east-once var-ready 1
execute if score east-once var-ready matches 1 run tellraw @a {"text": "Red is ready!", "color": "red"}
execute if score east-once var-ready matches 1 run playsound slug_arena:ready master @a 349 99 -73
execute if score east-once var-ready matches 1 run scoreboard players set east-once var-ready -1

# Lights
title @a[tag=player.east] actionbar {"text":"READY","color":"green"}
fill 349 98 -75 350 98 -75 minecraft:green_stained_glass
fill 349 98 -71 350 98 -71 minecraft:green_stained_glass
fill 349 97 -75 350 97 -75 minecraft:sea_lantern
fill 349 97 -71 350 97 -71 minecraft:sea_lantern

# Glow
team add east.ready
team modify east.ready color green
team join east.ready @a[tag=player.east]
effect give @a[tag=player.east] minecraft:glowing 1 1 true