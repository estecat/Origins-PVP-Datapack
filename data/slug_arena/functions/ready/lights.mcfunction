#### North ####
# Ready
execute if score ready.north variable matches 1 unless score game.start variable matches 1 run fill 310 98 -111 310 98 -110 minecraft:green_stained_glass
execute if score ready.north variable matches 1 run fill 314 98 -111 314 98 -110 minecraft:green_stained_glass
execute if score ready.north variable matches 1 run fill 310 97 -111 310 97 -110 minecraft:sea_lantern
execute if score ready.north variable matches 1 run fill 314 97 -111 314 97 -110 minecraft:sea_lantern

# Not ready
execute unless score ready.north variable matches 1 run fill 310 98 -111 310 98 -110 minecraft:red_stained_glass
execute unless score ready.north variable matches 1 run fill 314 98 -111 314 98 -110 minecraft:red_stained_glass
execute unless score ready.north variable matches 1 run fill 310 97 -111 310 97 -110 minecraft:shroomlight
execute unless score ready.north variable matches 1 run fill 314 97 -111 314 97 -110 minecraft:shroomlight



#### South ####
# Ready
execute if score ready.south variable matches 1 unless score game.start variable matches 1 run fill 310 98 -36 310 98 -35 minecraft:green_stained_glass
execute if score ready.south variable matches 1 run fill 314 98 -36 314 98 -35 minecraft:green_stained_glass
execute if score ready.south variable matches 1 run fill 310 97 -36 310 97 -35 minecraft:sea_lantern
execute if score ready.south variable matches 1 run fill 314 97 -36 314 97 -35 minecraft:sea_lantern

# Not ready
execute unless score ready.south variable matches 1 run fill 310 98 -36 310 98 -35 minecraft:red_stained_glass
execute unless score ready.south variable matches 1 run fill 314 98 -36 314 98 -35 minecraft:red_stained_glass
execute unless score ready.south variable matches 1 run fill 310 97 -36 310 97 -35 minecraft:shroomlight
execute unless score ready.south variable matches 1 run fill 314 97 -36 314 97 -35 minecraft:shroomlight



#### East ####
# Ready
execute if score ready.east variable matches 1 unless score game.start variable matches 1 run fill 349 98 -75 350 98 -75 minecraft:green_stained_glass
execute if score ready.east variable matches 1 run fill 349 98 -71 350 98 -71 minecraft:green_stained_glass
execute if score ready.east variable matches 1 run fill 349 97 -75 350 97 -75 minecraft:sea_lantern
execute if score ready.east variable matches 1 run fill 349 97 -71 350 97 -71 minecraft:sea_lantern

# Not ready
execute unless score ready.east variable matches 1 run fill 349 98 -75 350 98 -75 minecraft:red_stained_glass
execute unless score ready.east variable matches 1 run fill 349 98 -71 350 98 -71 minecraft:red_stained_glass
execute unless score ready.east variable matches 1 run fill 349 97 -75 350 97 -75 minecraft:shroomlight
execute unless score ready.east variable matches 1 run fill 349 97 -71 350 97 -71 minecraft:shroomlight



### West ###
# Ready
execute if score ready.west variable matches 1 unless score game.start variable matches 1 run title @a[tag=player.west] actionbar {"text":"READY","color":"green"}
execute if score ready.west variable matches 1 run fill 274 98 -75 275 98 -75 minecraft:green_stained_glass
execute if score ready.west variable matches 1 run fill 274 98 -71 275 98 -71 minecraft:green_stained_glass
execute if score ready.west variable matches 1 run fill 274 97 -75 275 97 -75 minecraft:sea_lantern
execute if score ready.west variable matches 1 run fill 274 97 -71 275 97 -71 minecraft:sea_lantern

# Not ready
execute unless score ready.west variable matches 1 run title @a[tag=player.west] actionbar ""
execute unless score ready.west variable matches 1 run fill 274 98 -75 275 98 -75 minecraft:red_stained_glass
execute unless score ready.west variable matches 1 run fill 274 98 -71 275 98 -71 minecraft:red_stained_glass
execute unless score ready.west variable matches 1 run fill 274 97 -75 275 97 -75 minecraft:shroomlight
execute unless score ready.west variable matches 1 run fill 274 97 -71 275 97 -71 minecraft:shroomlight