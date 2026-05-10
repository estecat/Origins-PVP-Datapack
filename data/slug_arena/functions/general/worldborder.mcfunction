# Set spawnpoint at location when worldborder is on
execute if score worldborder var-game matches 0 run setworldspawn 312 35 -297
execute if score worldborder var-game matches 0 run spawnpoint @a 312 35 -297

execute if score worldborder var-game matches 1 run setworldspawn 312 140 -73
execute if score worldborder var-game matches 1 run spawnpoint @a 312 140 -73
execute as @a[tag=!player,x=311.0,y=140,z=-74.0,dx=3,dz=3] run gamemode spectator @s