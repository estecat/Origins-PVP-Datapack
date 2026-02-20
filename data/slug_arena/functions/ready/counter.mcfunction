# Ready
execute if score ready.north variable matches 1 unless score ready.north flag matches -1 run scoreboard players set ready.north flag 1
execute if score ready.north flag matches 1 run scoreboard players add ready.players variable 1
execute if score ready.north flag matches 1 run tellraw @a {"text": "Green is ready!", "color": "green"}
execute if score ready.north flag matches 1 run scoreboard players set ready.north flag -1

execute if score ready.south variable matches 1 unless score ready.south flag matches -1 run scoreboard players set ready.south flag 1
execute if score ready.south flag matches 1 run scoreboard players add ready.players variable 1
execute if score ready.south flag matches 1 run tellraw @a {"text": "Yellow is ready!", "color": "yellow"}
execute if score ready.south flag matches 1 run scoreboard players set ready.south flag -1

execute if score ready.east variable matches 1 unless score ready.east flag matches -1 run scoreboard players set ready.east flag 1
execute if score ready.east flag matches 1 run scoreboard players add ready.players variable 1
execute if score ready.east flag matches 1 run tellraw @a {"text": "Red is ready!", "color": "red"}
execute if score ready.east flag matches 1 run scoreboard players set ready.east flag -1

execute if score ready.west variable matches 1 unless score ready.west flag matches -1 run scoreboard players set ready.west flag 1
execute if score ready.west flag matches 1 run scoreboard players add ready.players variable 1
execute if score ready.west flag matches 1 run tellraw @a {"text": "Blue is ready!", "color": "blue"}
execute if score ready.west flag matches 1 run scoreboard players set ready.west flag -1

# Not ready
execute if score ready.north variable matches 0 unless score ready.north flag matches -2 run scoreboard players set ready.north flag 2
execute if score ready.north flag matches 2 run scoreboard players remove ready.players variable 1
execute if score ready.north flag matches 2 run scoreboard players set ready.north flag -2

execute if score ready.south variable matches 0 unless score ready.south flag matches -2 run scoreboard players set ready.south flag 2
execute if score ready.south flag matches 2 run scoreboard players remove ready.players variable 1
execute if score ready.south flag matches 2 run scoreboard players set ready.south flag -2

execute if score ready.east variable matches 0 unless score ready.east flag matches -2 run scoreboard players set ready.east flag 2
execute if score ready.east flag matches 2 run scoreboard players remove ready.players variable 1
execute if score ready.east flag matches 2 run scoreboard players set ready.east flag -2

execute if score ready.west variable matches 0 unless score ready.west flag matches -2 run scoreboard players set ready.west flag 2
execute if score ready.west flag matches 2 run scoreboard players remove ready.players variable 1
execute if score ready.west flag matches 2 run scoreboard players set ready.west flag -2