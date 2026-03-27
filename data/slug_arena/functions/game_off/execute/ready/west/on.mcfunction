# Counter
execute unless score ready.west flag matches -1 run scoreboard players set ready.west flag 1
execute if score ready.west flag matches 1 run scoreboard players add ready.players variable 1
execute if score ready.west flag matches 1 run tellraw @a {"text": "Blue is ready!", "color": "blue"}
execute if score ready.west flag matches 1 run scoreboard players set ready.west flag -1

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

# Sound
execute if score ready.sound.west flag matches 0 run scoreboard players set ready.sound.west flag 1
execute if score ready.sound.west flag matches 1 run playsound slug_arena:ready master @a 275 99 -73
execute if score ready.sound.west flag matches 1 run scoreboard players set ready.sound.west flag -1