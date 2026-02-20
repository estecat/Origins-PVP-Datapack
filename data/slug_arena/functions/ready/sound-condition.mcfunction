# 0: Ready to fire, 1: Set to fire, -1: Fired
# -1 will only reset when the player leaves the area
execute if score ready.sound.north flag matches 0 if score ready.north variable matches 1 run scoreboard players set ready.sound.north flag 1
execute if score ready.sound.south flag matches 0 if score ready.south variable matches 1 run scoreboard players set ready.sound.south flag 1
execute if score ready.sound.east flag matches 0 if score ready.east variable matches 1 run scoreboard players set ready.sound.east flag 1
execute if score ready.sound.west flag matches 0 if score ready.west variable matches 1 run scoreboard players set ready.sound.west flag 1

execute if score ready.north variable matches ..0 run scoreboard players set ready.sound.north flag 0
execute if score ready.south variable matches ..0 run scoreboard players set ready.sound.south flag 0
execute if score ready.east variable matches ..0 run scoreboard players set ready.sound.east flag 0
execute if score ready.west variable matches ..0 run scoreboard players set ready.sound.west flag 0
