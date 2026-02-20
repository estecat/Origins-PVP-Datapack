# playsound slug_arena:world_border neutral @a 278 119 -107 4
# playsound slug_arena:world_border neutral @a 346 119 -39 4
# playsound slug_arena:world_border neutral @a 346 119 -107 4
# playsound slug_arena:world_border neutral @a 278 119 -39 4

execute if score youretakingtoolong variable matches 5400.. if score worldborder.event flag matches 0 run scoreboard players set worldborder.event flag 1


execute if score youretakingtoolong variable matches 5400.. if score worldborder.event flag matches 1 run execute as @a at @s run playsound slug_arena:world_border master @s ~ ~ ~ 6 1
execute if score youretakingtoolong variable matches 5400.. if score worldborder.event flag matches 1 run worldborder set 69
execute if score youretakingtoolong variable matches 5400.. if score worldborder.event flag matches 1 run scoreboard players set worldborder variable 1

execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 1 run worldborder set 23 50
execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 2 run worldborder set 21 50
execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 3 run worldborder set 41 20
execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 4 run worldborder set 23 50
execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 5 run worldborder set 33 40
execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 6 run worldborder set 21 50
execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 7 run worldborder set 27 50
execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 8 run worldborder set 13 60
#execute if score youretakingtoolong variable matches 5400.. if score map_number variable matches 9 run 


execute if score youretakingtoolong variable matches 5400.. if score worldborder.event flag matches 1 run scoreboard players set worldborder.event flag -1