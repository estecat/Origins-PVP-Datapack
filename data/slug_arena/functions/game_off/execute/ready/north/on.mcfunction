# Counter
execute unless score north-once var-ready matches -1 run scoreboard players set north-once var-ready 1
execute if score north-once var-ready matches 1 run tellraw @a {"text": "Green is ready!", "color": "green"}
execute if score north-once var-ready matches 1 run playsound slug_arena:ready master @a 312 99 -110
execute if score north-once var-ready matches 1 run scoreboard players set north-once var-ready -1

# Lights
title @a[tag=player.north] actionbar {"text":"READY","color":"green"}
fill 310 98 -111 310 98 -110 minecraft:green_stained_glass
fill 314 98 -111 314 98 -110 minecraft:green_stained_glass
fill 310 97 -111 310 97 -110 minecraft:sea_lantern
fill 314 97 -111 314 97 -110 minecraft:sea_lantern

# Glow
team add north.ready
team modify north.ready color green
team join north.ready @a[tag=player.north]
effect give @a[tag=player.north] minecraft:glowing 1 1 true