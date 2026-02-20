# 0: Ready to fire, 1: Set to fire, -1: Fired
# -1 will only reset when the player leaves the area
execute if score ready.sound.north flag matches 1 run playsound slug_arena:ready master @a 312 99 -110
execute if score ready.sound.north flag matches 1 run scoreboard players set ready.sound.north flag -1

execute if score ready.sound.south flag matches 1 run playsound slug_arena:ready master @a 312 99 -36
execute if score ready.sound.south flag matches 1 run scoreboard players set ready.sound.south flag -1

execute if score ready.sound.east flag matches 1 run playsound slug_arena:ready master @a 349 99 -73
execute if score ready.sound.east flag matches 1 run scoreboard players set ready.sound.east flag -1

execute if score ready.sound.west flag matches 1 run playsound slug_arena:ready master @a 275 99 -73
execute if score ready.sound.west flag matches 1 run scoreboard players set ready.sound.west flag -1