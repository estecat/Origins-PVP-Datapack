function slug_arena:reset/execute
tp lazynor_cat 312 103 -74 180 0
tag lazynor_cat add player
tag lazynor_cat add player.north

execute positioned 312 101 -82 run player Alex spawn
tp Alex 312 101 -82
gamemode adventure Alex
tag Alex add player
tag Alex add player.east

scoreboard players set start var-game 1
clear @a