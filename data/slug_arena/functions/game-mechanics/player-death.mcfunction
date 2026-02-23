# -1: Nothing else to do, 0: Player is alive, 1: Player is dead but hasn't respawned


# █▀▄ █▀▀ ▀█▀ █▀▀ █▀▀ ▀█▀
# █▄▀ ██▄ ░█░ ██▄ █▄▄ ░█░
# If player does not exist, set to 2
# If player does exist and is dead, set to 1
execute if score game.start variable matches 1 run execute if score player.north.died flag matches 0 run execute unless entity @a[tag=player.north] run scoreboard players set player.north.died flag 2
execute if score game.start variable matches 1 run execute if score player.south.died flag matches 0 run execute unless entity @a[tag=player.south] run scoreboard players set player.south.died flag 2
execute if score game.start variable matches 1 run execute if score player.east.died flag matches 0 run execute unless entity @a[tag=player.east] run scoreboard players set player.east.died flag 2
execute if score game.start variable matches 1 run execute if score player.west.died flag matches 0 run execute unless entity @a[tag=player.west] run scoreboard players set player.west.died flag 2

execute if score game.start variable matches 1 run execute if score player.north.died flag matches 0 run execute if entity @a[tag=player.north,nbt={Health:0.0f}] run scoreboard players set player.north.died flag 1
execute if score game.start variable matches 1 run execute if score player.south.died flag matches 0 run execute if entity @a[tag=player.south,nbt={Health:0.0f}] run scoreboard players set player.south.died flag 1
execute if score game.start variable matches 1 run execute if score player.east.died flag matches 0 run execute if entity @a[tag=player.east,nbt={Health:0.0f}] run scoreboard players set player.east.died flag 1
execute if score game.start variable matches 1 run execute if score player.west.died flag matches 0 run execute if entity @a[tag=player.west,nbt={Health:0.0f}] run scoreboard players set player.west.died flag 1



# ▀█▀ █▀█   █▀▄▀█ ▄▀█ █▀█ █▄▀ █▀▀ █▀█
# ░█░ █▀▀   █░▀░█ █▀█ █▀▄ █░█ ██▄ █▀▄
# Teleport tp markers as long as player is alive
execute if score game.start variable matches 1 run execute if score player.north.died flag matches 0 run tp @e[type=marker,tag=player.north.marker] @a[tag=player.north,limit=1]
execute if score game.start variable matches 1 run execute if score player.south.died flag matches 0 run tp @e[type=marker,tag=player.south.marker] @a[tag=player.south,limit=1]
execute if score game.start variable matches 1 run execute if score player.east.died flag matches 0 run tp @e[type=marker,tag=player.east.marker] @a[tag=player.east,limit=1]
execute if score game.start variable matches 1 run execute if score player.west.died flag matches 0 run tp @e[type=marker,tag=player.west.marker] @a[tag=player.west,limit=1]



# █▀▄▀█ █▀▀ █▀ █▀ ▄▀█ █▀▀ █▀▀ █▀
# █░▀░█ ██▄ ▄█ ▄█ █▀█ █▄█ ██▄ ▄█
# If player died, set to announce
execute if score game.start variable matches 1 run execute if score player.north.died flag matches 1 run execute if score player.north.died.announce flag matches 0 run scoreboard players set player.north.died.announce flag 1
execute if score game.start variable matches 1 run execute if score player.south.died flag matches 1 run execute if score player.south.died.announce flag matches 0 run scoreboard players set player.south.died.announce flag 1
execute if score game.start variable matches 1 run execute if score player.east.died flag matches 1 run execute if score player.east.died.announce flag matches 0 run scoreboard players set player.east.died.announce flag 1
execute if score game.start variable matches 1 run execute if score player.west.died flag matches 1 run execute if score player.west.died.announce flag matches 0 run scoreboard players set player.west.died.announce flag 1


# Play message for FFA
execute if score game.mode variable matches 0 run execute if score player.north.died flag matches 1 run execute if score player.north.died.announce flag matches 1 run tellraw @a {"text":"========================\nGREEN HAS BEEN ELIMINATED\n========================","bold":true,"color":"green"}
execute if score game.mode variable matches 0 run execute if score player.south.died flag matches 1 run execute if score player.south.died.announce flag matches 1 run tellraw @a {"text":"========================\nYELLOW HAS BEEN ELIMINATED\n========================","bold":true,"color":"yellow"}
execute if score game.mode variable matches 0 run execute if score player.east.died flag matches 1 run execute if score player.east.died.announce flag matches 1 run tellraw @a {"text":"========================\nRED HAS BEEN ELIMINATED\n========================","bold":true,"color":"red"}
execute if score game.mode variable matches 0 run execute if score player.west.died flag matches 1 run execute if score player.west.died.announce flag matches 1 run tellraw @a {"text":"========================\nBLUE HAS BEEN ELIMINATED\n========================","bold":true,"color":"blue"}

# Play message for 2v2
execute if score game.mode variable matches 1 run execute if score player.north.died flag matches 1 run execute if score player.north.died.announce flag matches 1 run tellraw @a {"text":"========================\nA BLUE HAS BEEN ELIMINATED\n========================","bold":true,"color":"blue"}
execute if score game.mode variable matches 1 run execute if score player.west.died flag matches 1 run execute if score player.west.died.announce flag matches 1 run tellraw @a {"text":"========================\nA BLUE HAS BEEN ELIMINATED\n========================","bold":true,"color":"blue"}
execute if score game.mode variable matches 1 run execute if score player.south.died flag matches 1 run execute if score player.south.died.announce flag matches 1 run tellraw @a {"text":"========================\nA RED HAS BEEN ELIMINATED\n========================","bold":true,"color":"red"}
execute if score game.mode variable matches 1 run execute if score player.east.died flag matches 1 run execute if score player.east.died.announce flag matches 1 run tellraw @a {"text":"========================\nA RED HAS BEEN ELIMINATED\n========================","bold":true,"color":"red"}


# Play sound
execute if score player.north.died flag matches 1 run execute if score player.north.died.announce flag matches 1 run execute at @e[tag=player.north.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1
execute if score player.south.died flag matches 1 run execute if score player.south.died.announce flag matches 1 run execute at @e[tag=player.south.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1
execute if score player.east.died flag matches 1 run execute if score player.east.died.announce flag matches 1 run execute at @e[tag=player.east.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1
execute if score player.west.died flag matches 1 run execute if score player.west.died.announce flag matches 1 run execute at @e[tag=player.west.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1


# If announced, turn off announcements
execute if score player.north.died flag matches 1 run execute if score player.north.died.announce flag matches 1 run scoreboard players set player.north.died.announce flag -1
execute if score player.south.died flag matches 1 run execute if score player.south.died.announce flag matches 1 run scoreboard players set player.south.died.announce flag -1
execute if score player.east.died flag matches 1 run execute if score player.east.died.announce flag matches 1 run scoreboard players set player.east.died.announce flag -1
execute if score player.west.died flag matches 1 run execute if score player.west.died.announce flag matches 1 run scoreboard players set player.west.died.announce flag -1


# Reset announcements once game is finished
execute if score game.start variable matches 0 run scoreboard players set player.north.died.announce flag 0
execute if score game.start variable matches 0 run scoreboard players set player.south.died.announce flag 0
execute if score game.start variable matches 0 run scoreboard players set player.east.died.announce flag 0
execute if score game.start variable matches 0 run scoreboard players set player.west.died.announce flag 0


# █▀▄ █▀▀ ▄▀█ ▀█▀ █░█
# █▄▀ ██▄ █▀█ ░█░ █▀█
## Make them a loser unless their the last one
execute if score player.north.died flag matches 1 run execute unless score player.count variable matches ..1 run tag @a[tag=player.north] add loser
execute if score player.south.died flag matches 1 run execute unless score player.count variable matches ..1 run tag @a[tag=player.south] add loser
execute if score player.east.died flag matches 1 run execute unless score player.count variable matches ..1 run tag @a[tag=player.east] add loser
execute if score player.west.died flag matches 1 run execute unless score player.count variable matches ..1 run tag @a[tag=player.west] add loser

## Score
# FFA
execute if score player.north.died flag matches 1 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1
execute if score player.south.died flag matches 1 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1
execute if score player.east.died flag matches 1 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1
execute if score player.west.died flag matches 1 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1

# 2v2
execute if score player.north.died flag matches 1 run scoreboard players add north-west team-deaths 1
execute if score player.west.died flag matches 1 run scoreboard players add north-west team-deaths 1
execute if score player.south.died flag matches 1 run scoreboard players add south-east team-deaths 1
execute if score player.east.died flag matches 1 run scoreboard players add south-east team-deaths 1

## Move on to next step
execute if score player.north.died flag matches 1 run scoreboard players set player.north.died flag 3
execute if score player.south.died flag matches 1 run scoreboard players set player.south.died flag 3
execute if score player.east.died flag matches 1 run scoreboard players set player.east.died flag 3
execute if score player.west.died flag matches 1 run scoreboard players set player.west.died flag 3

## Non-existence
execute if score player.north.died flag matches 2 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1
execute if score player.south.died flag matches 2 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1
execute if score player.east.died flag matches 2 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1
execute if score player.west.died flag matches 2 run execute unless score player.count variable matches ..1 run scoreboard players remove player.count variable 1

execute if score player.north.died flag matches 2 run execute unless score south-east team-deaths matches 2 run scoreboard players add north-west team-deaths 1
execute if score player.west.died flag matches 2 run execute unless score south-east team-deaths matches 2 run scoreboard players add north-west team-deaths 1
execute if score player.south.died flag matches 2 run execute unless score north-west team-deaths matches 2 run scoreboard players add south-east team-deaths 1
execute if score player.east.died flag matches 2 run execute unless score north-west team-deaths matches 2 run scoreboard players add south-east team-deaths 1

execute if score player.north.died flag matches 2 run scoreboard players set player.north.died flag 4
execute if score player.south.died flag matches 2 run scoreboard players set player.south.died flag 4
execute if score player.east.died flag matches 2 run scoreboard players set player.east.died flag 4
execute if score player.west.died flag matches 2 run scoreboard players set player.west.died flag 4


# █▀█ █▀█ █▀ ▀█▀ ▄▄ █▀▄▀█ █▀█ █▀█ ▀█▀ █▀▀ █▀▄▀█
# █▀▀ █▄█ ▄█ ░█░ ░░ █░▀░█ █▄█ █▀▄ ░█░ ██▄ █░▀░█
## As long as the player is dead
# Try to tp them
execute if score player.north.died flag matches 3..4 run execute run tp @a[tag=player.north] @e[type=minecraft:marker,tag=player.north.marker,limit=1]
execute if score player.south.died flag matches 3..4 run execute run tp @a[tag=player.south] @e[type=minecraft:marker,tag=player.south.marker,limit=1]
execute if score player.east.died flag matches 3..4 run execute run tp @a[tag=player.east] @e[type=minecraft:marker,tag=player.east.marker,limit=1]
execute if score player.west.died flag matches 3..4 run execute run tp @a[tag=player.west] @e[type=minecraft:marker,tag=player.west.marker,limit=1]

# Try to set their gamemode
execute if score player.north.died flag matches 3..4 run execute run gamemode spectator @a[tag=player.north]
execute if score player.south.died flag matches 3..4 run execute run gamemode spectator @a[tag=player.south]
execute if score player.east.died flag matches 3..4 run execute run gamemode spectator @a[tag=player.east]
execute if score player.west.died flag matches 3..4 run execute run gamemode spectator @a[tag=player.west]

# Try to clear them
execute if score player.north.died flag matches 3..4 run execute run clear @a[tag=player.north]
execute if score player.south.died flag matches 3..4 run execute run clear @a[tag=player.south]
execute if score player.east.died flag matches 3..4 run execute run clear @a[tag=player.east]
execute if score player.west.died flag matches 3..4 run execute run clear @a[tag=player.west]

# Wait for them to respawn
execute if score player.north.died flag matches 3 unless entity @a[tag=player.north,nbt={Health:0.0f}] run execute run scoreboard players set player.north.died flag -1
execute if score player.south.died flag matches 3 unless entity @a[tag=player.south,nbt={Health:0.0f}] run execute run scoreboard players set player.south.died flag -1
execute if score player.east.died flag matches 3 unless entity @a[tag=player.east,nbt={Health:0.0f}] run execute run scoreboard players set player.east.died flag -1
execute if score player.west.died flag matches 3 unless entity @a[tag=player.west,nbt={Health:0.0f}] run execute run scoreboard players set player.west.died flag -1

execute if score player.north.died flag matches 4 run execute run scoreboard players set player.north.died flag -1
execute if score player.south.died flag matches 4 run execute run scoreboard players set player.south.died flag -1
execute if score player.east.died flag matches 4 run execute run scoreboard players set player.east.died flag -1
execute if score player.west.died flag matches 4 run execute run scoreboard players set player.west.died flag -1