# Clear labs basement
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 31 -108 347 36 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 37 -108 347 42 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 43 -108 347 48 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 49 -108 347 54 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 55 -108 347 60 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 61 -108 347 66 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 67 -108 347 72 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 73 -108 347 78 -38 air
execute unless score set-map var-game matches 0 unless score set-map var-game matches 3 run fill 277 79 -108 347 84 -38 air

# Clear
execute if score set-map var-game matches -1 run function slug_arena:options/map/load/clear
execute if score set-map var-game matches -1 run tellraw @a [{"text": "Map cleared!", "color": "yellow"}]

execute unless score set-map var-game matches 0 run kill @e[type=#minecraft:arrows]
execute unless score set-map var-game matches 0 run kill @e[type=marker,tag=kowloon.vent]

# Maps
execute if score set-map var-game matches 1 run function slug_arena:options/map/load/medieval
execute if score set-map var-game matches 1 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Medieval Siege", "color": "dark_green", "bold": true}]

execute if score set-map var-game matches 2 run function slug_arena:options/map/load/volcano
execute if score set-map var-game matches 2 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Volcanic Cave", "color": "red", "bold": true}]

execute if score set-map var-game matches 3 run function slug_arena:options/map/load/lab
execute if score set-map var-game matches 3 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Lab", "color": "dark_aqua", "bold": true}]

execute if score set-map var-game matches 4 run function slug_arena:options/map/load/legacy
execute if score set-map var-game matches 4 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Legacy", "color": "dark_purple", "bold": true}]

execute if score set-map var-game matches 5 run function slug_arena:options/map/load/jungle
execute if score set-map var-game matches 5 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Jungle", "color": "dark_green", "bold": true}]

execute if score set-map var-game matches 6 run function slug_arena:options/map/load/sand
execute if score set-map var-game matches 6 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Sand Temple", "color": "gold", "bold": true}]

execute if score set-map var-game matches 7 run function slug_arena:options/map/load/kowloon
execute if score set-map var-game matches 7 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Kowloon", "color": "dark_red", "bold": true}]

execute if score set-map var-game matches 8 run function slug_arena:options/map/load/city
execute if score set-map var-game matches 8 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Sewer City", "color": "gray", "bold": true}]

execute if score set-map var-game matches 9 run function slug_arena:options/map/load/frozen
execute if score set-map var-game matches 9 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Frozen Lake", "color": "aqua", "bold": true}]

# End
execute unless score set-map var-game matches 0 as @a at @s run playsound minecraft:block.large_amethyst_bud.place record @s ~ ~ ~
execute unless score set-map var-game matches 0 run scoreboard players set set-map var-game 0