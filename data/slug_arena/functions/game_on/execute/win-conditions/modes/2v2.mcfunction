execute as @a at @s run playsound minecraft:entity.ender_dragon.death ambient @s ~ ~ ~ 0.2
execute as @a at @s run playsound slug_arena:downtime music @a ~ ~ ~ 0.15 1

## Accountance
execute if score team-se var-death matches 2 run xp add @a[team=team-nw] 1 levels
execute if score team-nw var-death matches 2 run xp add @a[team=team-se] 1 levels

execute if score team-se var-death matches 2 run execute as @a[team=team-nw] run scoreboard players add @s wins 1
execute if score team-nw var-death matches 2 run execute as @a[team=team-se] run scoreboard players add @s wins 1

## Message
execute if score team-se var-death matches 2 run title @a title [{"text":"Blue", "color":"blue"},{"text":" & ", "color":"white"},{"text":"Green", "color": "green"},{"text":" wins!", "color":"white"}]
execute if score team-nw var-death matches 2 run title @a title [{"text":"Yellow", "color":"yellow"},{"text":" & ", "color":"white"},{"text":"Red", "color": "red"},{"text":" wins!", "color":"white"}]

## Fireworks
execute if score team-se var-death matches 2 run scoreboard players set fireworks.2v2 var-fireworks 1
execute if score team-nw var-death matches 2 run scoreboard players set fireworks.2v2 var-fireworks 2
scoreboard players set fireworks-clock var-fireworks 1

## Reset timer
scoreboard players set reset.timer var-game 1