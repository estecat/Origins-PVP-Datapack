function slug_arena:reset/execute
tp lazynor_cat 305 102 -73 90 0
tag lazynor_cat add player
tag lazynor_cat add player.north

execute positioned 303 101 -73 run player Alex spawn
tp Alex 303 101 -73
gamemode adventure Alex
tag Alex add player
tag Alex add player.east

scoreboard players set start var-game 1
clear @a