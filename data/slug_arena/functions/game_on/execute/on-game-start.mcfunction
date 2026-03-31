execute if score game.start flag matches 0 run scoreboard players set door variable 1
execute if score game.start flag matches 0 run give @a[tag=player] minecraft:cooked_beef 3

execute if score game.start flag matches 0 run scoreboard players operation game.id variable = rand id
execute if score game.start flag matches 0 unless score rand id matches 0 run scoreboard players operation @a[tag=player] id = rand id
execute if score game.start flag matches 0 if score rand id matches 0 run scoreboard players set @a[tag=player] id 1

execute if score game.start flag matches 0 run scoreboard players set game.start flag -1