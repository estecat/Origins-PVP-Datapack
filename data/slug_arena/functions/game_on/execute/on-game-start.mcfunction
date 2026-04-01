execute if score start-once var-game matches 0 run scoreboard players set door var-game 1
execute if score start-once var-game matches 0 run give @a[tag=player] minecraft:cooked_beef 3

execute if score start-once var-game matches 0 run scoreboard players operation id var-game = rand var-id
execute if score start-once var-game matches 0 unless score rand var-id matches 0 run scoreboard players operation @a[tag=player] var-id = rand var-id
execute if score start-once var-game matches 0 if score rand var-id matches 0 run scoreboard players set @a[tag=player] var-id 1

execute if score start-once var-game matches 0 run scoreboard players set start-once var-game -1