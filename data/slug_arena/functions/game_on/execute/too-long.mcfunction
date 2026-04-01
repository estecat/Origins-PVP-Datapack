# Clock
execute unless score reset.timer var-game matches 1.. run scoreboard players add youretakingtoolong var-game 2

# Trigger
execute if score youretakingtoolong var-game matches 4800.. run effect give @a[tag=player] minecraft:glowing 1 1 true
execute if score youretakingtoolong var-game matches 4800.. if score youretakingtoolong-once var-game matches 0 as @a at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 0.8 1
execute if score youretakingtoolong var-game matches 4800.. if score youretakingtoolong-once var-game matches 0 run scoreboard players set youretakingtoolong-once var-game -1