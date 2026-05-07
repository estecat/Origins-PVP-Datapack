function slug_arena:reset/execute
tp lazynor_cat 319 102 -73 270 0
tag lazynor_cat add player
tag lazynor_cat add player.north

execute positioned 321 101 -73 run player Alex spawn
tp Alex 321 101 -73
gamemode adventure Alex
tag Alex add player
tag Alex add player.east

scoreboard players set start var-game 1
clear @a