execute if score game.start variable matches 1 if score door.sound.open flag matches 0 run playsound slug_arena:player_door.open ambient @a 313.0 104 -108 1.5 1
execute if score game.start variable matches 1 if score door.sound.open flag matches 0 run playsound slug_arena:player_door.open ambient @a 313.0 104 -38 1.5 1
execute if score game.start variable matches 1 if score door.sound.open flag matches 0 run playsound slug_arena:player_door.open ambient @a 347 104 -73.0 1.5 1
execute if score game.start variable matches 1 if score door.sound.open flag matches 0 run playsound slug_arena:player_door.open ambient @a 277 104 -73.0 1.5 1
execute if score game.start variable matches 1 if score door.sound.open flag matches 0 run scoreboard players set door.sound.open flag -1

execute if score door.progress variable matches 195 if score door.sound.close flag matches 0 run playsound slug_arena:player_door.close ambient @a 313.0 104 -108 1 1
execute if score door.progress variable matches 195 if score door.sound.close flag matches 0 run playsound slug_arena:player_door.close ambient @a 313.0 104 -38 1 1
execute if score door.progress variable matches 195 if score door.sound.close flag matches 0 run playsound slug_arena:player_door.close ambient @a 347 104 -73.0 1 1
execute if score door.progress variable matches 195 if score door.sound.close flag matches 0 run playsound slug_arena:player_door.close ambient @a 277 104 -73.0 1 1
execute if score game.start variable matches 1 if score door.sound.close flag matches 0 run scoreboard players set door.sound.close flag -1