execute as @a at @s run playsound minecraft:entity.ender_dragon.death ambient @s ~ ~ ~ 0.2
execute as @a at @s run playsound slug_arena:downtime music @a ~ ~ ~ 0.15 1

## Accountance
execute if score south-east team-deaths matches 2 run xp add @a[team=north-west] 1 levels
execute if score north-west team-deaths matches 2 run xp add @a[team=south-east] 1 levels

execute if score south-east team-deaths matches 2 run execute as @a[team=north-west] run scoreboard players add @s wins 1
execute if score north-west team-deaths matches 2 run execute as @a[team=south-east] run scoreboard players add @s wins 1

## Message
execute if score south-east team-deaths matches 2 run title @a title [{"text":"Blue", "color":"blue"},{"text":" & ", "color":"white"},{"text":"Green", "color": "green"},{"text":" wins!", "color":"white"}]
execute if score north-west team-deaths matches 2 run title @a title [{"text":"Yellow", "color":"yellow"},{"text":" & ", "color":"white"},{"text":"Red", "color": "red"},{"text":" wins!", "color":"white"}]

## Fireworks
execute if score south-east team-deaths matches 2 run scoreboard players set game.mode.2v2.win.fireworks flag 1
execute if score north-west team-deaths matches 2 run scoreboard players set game.mode.2v2.win.fireworks flag 2
scoreboard players set game.win.fireworks flag 1

## Reset timer
scoreboard players set game.reset.timer variable 1