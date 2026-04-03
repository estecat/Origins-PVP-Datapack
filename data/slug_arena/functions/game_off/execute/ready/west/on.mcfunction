# Counter
execute unless score west-once var-ready matches -1 run scoreboard players set west-once var-ready 1
execute if score west-once var-ready matches 1 run tellraw @a {"text": "Blue is ready!", "color": "blue"}
execute if score west-once var-ready matches 1 run playsound slug_arena:ready master @a 275 99 -73
execute if score west-once var-ready matches 1 run scoreboard players set west-once var-ready -1

# Lights
title @a[tag=player.west] actionbar {"text":"READY","color":"green"}
fill 274 98 -75 275 98 -75 minecraft:green_stained_glass
fill 274 98 -71 275 98 -71 minecraft:green_stained_glass
fill 274 97 -75 275 97 -75 minecraft:sea_lantern
fill 274 97 -71 275 97 -71 minecraft:sea_lantern

# Glow
team add west.ready
team modify west.ready color green
team join west.ready @a[tag=player.west]
execute run effect give @a[tag=player.west] minecraft:glowing 1 1 true