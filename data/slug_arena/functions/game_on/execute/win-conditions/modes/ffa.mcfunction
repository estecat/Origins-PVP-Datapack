execute as @a at @s run playsound minecraft:entity.ender_dragon.death ambient @s ~ ~ ~ 0.2
execute as @a at @s run playsound slug_arena:downtime music @a ~ ~ ~ 0.15 1

## Accountance
# Add 1 win
execute if entity @a[tag=player.north,tag=!loser] as @a[tag=player.north] run scoreboard players add @s wins 1
execute if entity @a[tag=player.south,tag=!loser] as @a[tag=player.south] run scoreboard players add @s wins 1
execute if entity @a[tag=player.east,tag=!loser] as @a[tag=player.east] run scoreboard players add @s wins 1
execute if entity @a[tag=player.west,tag=!loser] as @a[tag=player.west] run scoreboard players add @s wins 1

# Add 1 lvl
execute if entity @a[tag=player.north,tag=!loser] as @a[tag=player.north] run xp add @s 1 levels
execute if entity @a[tag=player.south,tag=!loser] as @a[tag=player.south] run xp add @s 1 levels
execute if entity @a[tag=player.east,tag=!loser] as @a[tag=player.east] run xp add @s 1 levels
execute if entity @a[tag=player.west,tag=!loser] as @a[tag=player.west] run xp add @s 1 levels

## Message
# For the winning player
execute if entity @a[tag=player.north,tag=!loser] as @a[tag=player.north] run title @s title {"text":"You Win!", "color": "green"}
execute if entity @a[tag=player.south,tag=!loser] as @a[tag=player.south] run title @s title {"text":"You Win!", "color": "yellow"}
execute if entity @a[tag=player.east,tag=!loser] as @a[tag=player.east] run title @s title {"text":"You Win!", "color": "red"}
execute if entity @a[tag=player.west,tag=!loser] as @a[tag=player.west] run title @s title {"text":"You Win!", "color": "blue"}

# Everyone else
execute if entity @a[tag=player.north,tag=!loser] run title @a[tag=!player.north] title {"text":"Green Wins!", "color": "green"}
execute if entity @a[tag=player.south,tag=!loser] run title @a[tag=!player.south] title {"text":"Yellow Wins!", "color": "yellow"}
execute if entity @a[tag=player.east,tag=!loser] run title @a[tag=!player.east] title {"text":"Red Wins!", "color": "red"}
execute if entity @a[tag=player.west,tag=!loser] run title @a[tag=!player.west] title {"text":"Blue Wins!", "color": "blue"}

## Fireworks
execute if entity @a[tag=player.north,tag=!loser] run scoreboard players set fireworks.ffa var-fireworks 1
execute if entity @a[tag=player.south,tag=!loser] run scoreboard players set fireworks.ffa var-fireworks 2
execute if entity @a[tag=player.east,tag=!loser] run scoreboard players set fireworks.ffa var-fireworks 3
execute if entity @a[tag=player.west,tag=!loser] run scoreboard players set fireworks.ffa var-fireworks 4
scoreboard players set fireworks-clock var-fireworks 1

## Reset timer
scoreboard players set reset.timer var-game 1