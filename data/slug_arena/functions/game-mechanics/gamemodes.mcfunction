# ▄▄ ▄▄ ▄▄ ▄▄   █▀▀ █▀▀ ▄▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▀░ █▀░ █▀█   ░░ ░░ ░░ ░░


# █░█░█ █ █▄░█   █▀▀ █▀█ █▄░█ █▀▄ █ ▀█▀ █ █▀█ █▄░█
# ▀▄▀▄▀ █ █░▀█   █▄▄ █▄█ █░▀█ █▄▀ █ ░█░ █ █▄█ █░▀█
## When win condition is met (player.count = 1)
execute if score game.start variable matches 1 if score game.mode variable matches 0 run execute if score player.count variable matches ..1 if score game.mode.ffa.win flag matches 0 run scoreboard players set game.mode.ffa.win flag 1

execute if score game.mode.ffa.win flag matches 1 run execute as @a at @s run playsound minecraft:entity.ender_dragon.death ambient @s ~ ~ ~ 0.2
execute if score game.mode.ffa.win flag matches 1 run execute as @a at @s run playsound slug_arena:downtime music @a ~ ~ ~ 0.15 1

## When FFA is won
# Add 1 win to the winning player
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.north,tag=!loser] as @a[tag=player.north] run scoreboard players add @s wins 1
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.south,tag=!loser] as @a[tag=player.south] run scoreboard players add @s wins 1
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.east,tag=!loser] as @a[tag=player.east] run scoreboard players add @s wins 1
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.west,tag=!loser] as @a[tag=player.west] run scoreboard players add @s wins 1

# Add 1 lvl to the winning player
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.north,tag=!loser] as @a[tag=player.north] run xp add @s 1 levels
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.south,tag=!loser] as @a[tag=player.south] run xp add @s 1 levels
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.east,tag=!loser] as @a[tag=player.east] run xp add @s 1 levels
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.west,tag=!loser] as @a[tag=player.west] run xp add @s 1 levels

# Display win message for winning player
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.north,tag=!loser] as @a[tag=player.north] run title @s title {"text":"You Win!", "color": "green"}
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.south,tag=!loser] as @a[tag=player.south] run title @s title {"text":"You Win!", "color": "yellow"}
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.east,tag=!loser] as @a[tag=player.east] run title @s title {"text":"You Win!", "color": "red"}
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.west,tag=!loser] as @a[tag=player.west] run title @s title {"text":"You Win!", "color": "blue"}

# Display winner for everyone else
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.north,tag=!loser] run title @a[tag=!player.north] title {"text":"Green Wins!", "color": "green"}
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.south,tag=!loser] run title @a[tag=!player.south] title {"text":"Yellow Wins!", "color": "yellow"}
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.east,tag=!loser] run title @a[tag=!player.east] title {"text":"Red Wins!", "color": "red"}
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.west,tag=!loser] run title @a[tag=!player.west] title {"text":"Blue Wins!", "color": "blue"}

# Set fireworks for winning player
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.north,tag=!loser] run scoreboard players set game.mode.ffa.win.fireworks.north flag 1
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.south,tag=!loser] run scoreboard players set game.mode.ffa.win.fireworks.south flag 1
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.east,tag=!loser] run scoreboard players set game.mode.ffa.win.fireworks.east flag 1
execute if score game.mode.ffa.win flag matches 1 run execute if entity @a[tag=player.west,tag=!loser] run scoreboard players set game.mode.ffa.win.fireworks.west flag 1

execute if score game.mode.ffa.win flag matches 1 run scoreboard players set game.win.fireworks flag 1
execute if score game.mode.ffa.win flag matches 1 run scoreboard players set game.reset.timer variable 1

## Turn off
execute if score game.mode.ffa.win flag matches 1 run scoreboard players set game.mode.ffa.win flag -1


# █▀▀ █ █▀█ █▀▀ █░█░█ █▀█ █▀█ █▄▀ █▀
# █▀░ █ █▀▄ ██▄ ▀▄▀▄▀ █▄█ █▀▄ █░█ ▄█
execute if score game.mode.ffa.win.fireworks.north flag matches 1 run execute if score win.fireworks flag matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;4312372],FadeColors:[I;14602026]}]}}}}
execute if score game.mode.ffa.win.fireworks.south flag matches 1 run execute if score win.fireworks flag matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;14602026],FadeColors:[I;14188952,15435844]}]}}}}
execute if score game.mode.ffa.win.fireworks.east flag matches 1 run execute if score win.fireworks flag matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;11743532],FadeColors:[I;8073150]}]}}}}
execute if score game.mode.ffa.win.fireworks.west flag matches 1 run execute if score win.fireworks flag matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;2437522],FadeColors:[I;2651799,4312372]}]}}}}





# ▄▄ ▄▄ ▄▄ ▄▄   ▀█ █░█ ▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▄ ▀▄▀ █▄   ░░ ░░ ░░ ░░

# █░█░█ █ █▄░█   █▀▀ █▀█ █▄░█ █▀▄ █ ▀█▀ █ █▀█ █▄░█
# ▀▄▀▄▀ █ █░▀█   █▄▄ █▄█ █░▀█ █▄▀ █ ░█░ █ █▄█ █░▀█
execute if score game.start variable matches 1 if score game.mode variable matches 1 run execute if score north-west team-deaths matches 2 if score game.mode.2v2.win flag matches 0 run scoreboard players set game.mode.2v2.win flag 1
execute if score game.start variable matches 1 if score game.mode variable matches 1 run execute if score south-east team-deaths matches 2 if score game.mode.2v2.win flag matches 0 run scoreboard players set game.mode.2v2.win flag 1

execute if score game.mode.2v2.win flag matches 1 run execute as @a at @s run playsound minecraft:entity.ender_dragon.death ambient @s ~ ~ ~ 0.2
execute if score game.mode.2v2.win flag matches 1 run execute run playsound slug_arena:downtime music @a ~ ~ ~ 0.15 1

execute if score game.mode.2v2.win flag matches 1 run execute if score south-east team-deaths matches 2 run xp add @a[team=north-west] 1 levels
execute if score game.mode.2v2.win flag matches 1 run execute if score north-west team-deaths matches 2 run xp add @a[team=south-east] 1 levels

execute if score game.mode.2v2.win flag matches 1 run execute if score south-east team-deaths matches 2 run execute as @a[team=north-west] run scoreboard players add @s wins 1
execute if score game.mode.2v2.win flag matches 1 run execute if score north-west team-deaths matches 2 run execute as @a[team=south-east] run scoreboard players add @s wins 1

execute if score game.mode.2v2.win flag matches 1 run execute if score south-east team-deaths matches 2 run title @a title [{"text":"Blue", "color":"blue"},{"text":" & ", "color":"white"},{"text":"Green", "color": "green"},{"text":" wins!", "color":"white"}]
execute if score game.mode.2v2.win flag matches 1 run execute if score north-west team-deaths matches 2 run title @a title [{"text":"Yellow", "color":"yellow"},{"text":" & ", "color":"white"},{"text":"Red", "color": "red"},{"text":" wins!", "color":"white"}]

execute if score game.mode.2v2.win flag matches 1 run execute if score south-east team-deaths matches 2 run scoreboard players set game.mode.2v2.win.fireworks flag 1
execute if score game.mode.2v2.win flag matches 1 run execute if score north-west team-deaths matches 2 run scoreboard players set game.mode.2v2.win.fireworks flag 2

execute if score game.mode.2v2.win flag matches 1 run scoreboard players set game.win.fireworks flag 1
execute if score game.mode.2v2.win flag matches 1 run scoreboard players set game.reset.timer variable 1

## Turn off
execute if score game.mode.2v2.win flag matches 1 run scoreboard players set game.mode.2v2.win flag -1


# █▀▀ █ █▀█ █▀▀ █░█░█ █▀█ █▀█ █▄▀ █▀
# █▀░ █ █▀▄ ██▄ ▀▄▀▄▀ █▄█ █▀▄ █░█ ▄█
execute if score game.mode.2v2.win.fireworks flag matches 1 run execute if score game.win.fireworks flag matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;2437522,4312372]}]}}}}
execute if score game.mode.2v2.win.fireworks flag matches 2 run execute if score game.win.fireworks flag matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;11743532,14602026]}]}}}}