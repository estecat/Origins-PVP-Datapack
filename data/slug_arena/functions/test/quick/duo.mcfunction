function slug_arena:reset/execute
tp lazynor_cat 312 99 -110
tag lazynor_cat add player
tag lazynor_cat add player.north

execute positioned 349 99 -73 run player Alex spawn
tp Alex 349 99 -73
gamemode adventure Alex
tag Alex add player
tag Alex add player.east