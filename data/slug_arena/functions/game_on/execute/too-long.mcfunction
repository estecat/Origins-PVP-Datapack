# Clock
execute unless score game.reset.timer variable matches 1.. run scoreboard players add youretakingtoolong variable 2

# Trigger
execute if score youretakingtoolong variable matches 4800.. run effect give @a[tag=player] minecraft:glowing 1 1 true
execute if score youretakingtoolong variable matches 4800.. if score youretakingtoolong.sound flag matches 0 as @a at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 0.8 1
execute if score youretakingtoolong variable matches 4800.. if score youretakingtoolong.sound flag matches 0 run scoreboard players set youretakingtoolong.sound flag -1