execute if score door.sound var-game matches 0 run playsound slug_arena:player_door.open ambient @a 313.0 104 -108 1.5 1
execute if score door.sound var-game matches 0 run playsound slug_arena:player_door.open ambient @a 313.0 104 -38 1.5 1
execute if score door.sound var-game matches 0 run playsound slug_arena:player_door.open ambient @a 347 104 -73.0 1.5 1
execute if score door.sound var-game matches 0 run playsound slug_arena:player_door.open ambient @a 277 104 -73.0 1.5 1
execute if score door.sound var-game matches 0 run scoreboard players set door.sound var-game 1

execute if score door var-game matches 195 if score door.sound var-game matches 1 run playsound slug_arena:player_door.close ambient @a 313.0 104 -108 1 1
execute if score door var-game matches 195 if score door.sound var-game matches 1 run playsound slug_arena:player_door.close ambient @a 313.0 104 -38 1 1
execute if score door var-game matches 195 if score door.sound var-game matches 1 run playsound slug_arena:player_door.close ambient @a 347 104 -73.0 1 1
execute if score door var-game matches 195 if score door.sound var-game matches 1 run playsound slug_arena:player_door.close ambient @a 277 104 -73.0 1 1
execute if score door var-game matches 195.. if score door.sound var-game matches 1 run scoreboard players set door.sound var-game -1