execute if score map variable matches -1 run function slug_arena:map/load/clear
execute if score map variable matches -1 run tellraw @a [{"text": "Map cleared!", "color": "yellow"}]

execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 31 -108 347 36 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 37 -108 347 42 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 43 -108 347 48 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 49 -108 347 54 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 55 -108 347 60 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 61 -108 347 66 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 67 -108 347 72 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 73 -108 347 78 -38 air
execute unless score map variable matches 0 unless score map variable matches 3 run fill 277 79 -108 347 84 -38 air


execute if score map variable matches 1 run function slug_arena:map/load/medieval
execute if score map variable matches 1 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Medieval Siege", "color": "dark_green", "bold": true}]

execute if score map variable matches 2 run function slug_arena:map/load/volcano
execute if score map variable matches 2 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Volcanic Cave", "color": "red", "bold": true}]

execute if score map variable matches 3 run function slug_arena:map/load/lab
execute if score map variable matches 3 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Lab", "color": "dark_aqua", "bold": true}]

execute if score map variable matches 4 run function slug_arena:map/load/legacy
execute if score map variable matches 4 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Legacy", "color": "dark_purple", "bold": true}]

execute if score map variable matches 5 run function slug_arena:map/load/jungle
execute if score map variable matches 5 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Jungle", "color": "dark_green", "bold": true}]

execute if score map variable matches 6 run function slug_arena:map/load/sand
execute if score map variable matches 6 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Sand Temple", "color": "gold", "bold": true}]

execute if score map variable matches 7 run function slug_arena:map/load/kowloon
execute if score map variable matches 7 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Kowloon", "color": "dark_red", "bold": true}]

execute if score map variable matches 8 run function slug_arena:map/load/city
execute if score map variable matches 8 run tellraw @a [{"text": "Selected: ", "color": "yellow"}, {"text": "Sewer City", "color": "gray", "bold": true}]

execute unless score map variable matches 0 as @a at @s run playsound minecraft:block.large_amethyst_bud.place record @s ~ ~ ~
execute unless score map variable matches 0 run scoreboard players set map variable 0