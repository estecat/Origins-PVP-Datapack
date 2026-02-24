execute if score game.start variable matches 1 unless score door.progress variable matches 220.. run scoreboard players set door.status variable 1
execute if score door.progress variable matches 221.. run scoreboard players set door.status variable 0

execute if score door.status variable matches 1 unless score door.progress variable matches 220.. run scoreboard players add door.progress variable 1
execute if score door.status variable matches -1 unless score door.progress variable matches ..0 run scoreboard players remove door.progress variable 1