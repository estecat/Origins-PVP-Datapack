# Set worldborder size with time
execute if score youretakingtoolong var-game matches 6000.. if score worldborder-once var-game matches 0 run scoreboard players set worldborder-once var-game 1

execute if score worldborder-once var-game matches 1 run execute as @a at @s run playsound slug_arena:world_border master @s ~ ~ ~ 6 1
execute if score worldborder-once var-game matches 1 run worldborder set 69
execute if score worldborder-once var-game matches 1 run scoreboard players set worldborder var-game 1

# Medieval
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 1 run worldborder set 23 50
# Volcano
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 2 run worldborder set 21 50
# Lab
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 3 run worldborder set 41 20
# Legacy
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 4 run worldborder set 23 50
# Jungle
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 5 run worldborder set 33 40
# Sand
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 6 run worldborder set 21 50
# Kowloon
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 7 run worldborder set 27 50
# City
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 8 run worldborder set 13 60
# Frozen
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 9 run worldborder set 15 60
# Pirate
execute if score worldborder-once var-game matches 1 run execute if score map var-game matches 10 run worldborder set 31 60


execute if score youretakingtoolong var-game matches 6000.. if score worldborder-once var-game matches 1 run scoreboard players set worldborder-once var-game -1