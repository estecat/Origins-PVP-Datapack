function slug_arena:reset/execute
tp lazynor_cat 312 99 -110
tag lazynor_cat add player
tag lazynor_cat add player.north

execute positioned 312 99 -36 run player Grian spawn
tp Grian 312 99 -36
gamemode adventure Grian
tag Grian add player
tag Grian add player.south

execute positioned 349 99 -73 run player Alex spawn
tp Alex 349 99 -73
gamemode adventure Alex
tag Alex add player
tag Alex add player.east

execute positioned 275 99 -73 run player Steve spawn
tp Steve 275 99 -73
gamemode adventure Steve
tag Steve add player
tag Steve add player.west