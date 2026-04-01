# -1: Nothing else to do, 0: Player is alive, 1: Player is dead but hasn't respawned


# █▀▄ █▀▀ ▀█▀ █▀▀ █▀▀ ▀█▀
# █▄▀ ██▄ ░█░ ██▄ █▄▄ ░█░
# If player does not exist, set to 2
execute unless entity @a[tag=player.north] if score north var-death matches 0 run scoreboard players set north var-death 2
execute unless entity @a[tag=player.south] if score south var-death matches 0 run scoreboard players set south var-death 2
execute unless entity @a[tag=player.east] if score east var-death matches 0 run scoreboard players set east var-death 2
execute unless entity @a[tag=player.west] if score west var-death matches 0 run scoreboard players set west var-death 2

# If player does exist and is dead, set to 1
execute if entity @a[tag=player.north,nbt={Health:0.0f}] if score north var-death matches 0 run scoreboard players set north var-death 1
execute if entity @a[tag=player.south,nbt={Health:0.0f}] if score south var-death matches 0 run scoreboard players set south var-death 1
execute if entity @a[tag=player.east,nbt={Health:0.0f}] if score east var-death matches 0 run scoreboard players set east var-death 1
execute if entity @a[tag=player.west,nbt={Health:0.0f}] if score west var-death matches 0 run scoreboard players set west var-death 1



# ▀█▀ █▀█   █▀▄▀█ ▄▀█ █▀█ █▄▀ █▀▀ █▀█
# ░█░ █▀▀   █░▀░█ █▀█ █▀▄ █░█ ██▄ █▀▄
# Teleport tp markers as long as player is alive
execute if score north var-death matches 0 run tp @e[type=marker,tag=player.north.marker] @a[tag=player.north,limit=1]
execute if score south var-death matches 0 run tp @e[type=marker,tag=player.south.marker] @a[tag=player.south,limit=1]
execute if score east var-death matches 0 run tp @e[type=marker,tag=player.east.marker] @a[tag=player.east,limit=1]
execute if score west var-death matches 0 run tp @e[type=marker,tag=player.west.marker] @a[tag=player.west,limit=1]



# █▀▄▀█ █▀▀ █▀ █▀ ▄▀█ █▀▀ █▀▀ █▀
# █░▀░█ ██▄ ▄█ ▄█ █▀█ █▄█ ██▄ ▄█
# If player died, set to announce
execute if score north var-death matches 1 if score north-once var-death matches 0 run scoreboard players set north-once var-death 1
execute if score south var-death matches 1 if score south-once var-death matches 0 run scoreboard players set south-once var-death 1
execute if score east var-death matches 1 if score east-once var-death matches 0 run scoreboard players set east-once var-death 1
execute if score west var-death matches 1 if score west-once var-death matches 0 run scoreboard players set west-once var-death 1


# Play message for FFA
execute if score mode var-game matches 0 if score north var-death matches 1 if score north-once var-death matches 1 run tellraw @a {"text":"========================\nGREEN HAS BEEN ELIMINATED\n========================","bold":true,"color":"green"}
execute if score mode var-game matches 0 if score south var-death matches 1 if score south-once var-death matches 1 run tellraw @a {"text":"========================\nYELLOW HAS BEEN ELIMINATED\n========================","bold":true,"color":"yellow"}
execute if score mode var-game matches 0 if score east var-death matches 1 if score east-once var-death matches 1 run tellraw @a {"text":"========================\nRED HAS BEEN ELIMINATED\n========================","bold":true,"color":"red"}
execute if score mode var-game matches 0 if score west var-death matches 1 if score west-once var-death matches 1 run tellraw @a {"text":"========================\nBLUE HAS BEEN ELIMINATED\n========================","bold":true,"color":"blue"}

# Play message for 2v2
execute if score mode var-game matches 1 if score north var-death matches 1 if score north-once var-death matches 1 run tellraw @a {"text":"========================\nA BLUE HAS BEEN ELIMINATED\n========================","bold":true,"color":"blue"}
execute if score mode var-game matches 1 if score west var-death matches 1 if score west-once var-death matches 1 run tellraw @a {"text":"========================\nA BLUE HAS BEEN ELIMINATED\n========================","bold":true,"color":"blue"}
execute if score mode var-game matches 1 if score south var-death matches 1 if score south-once var-death matches 1 run tellraw @a {"text":"========================\nA RED HAS BEEN ELIMINATED\n========================","bold":true,"color":"red"}
execute if score mode var-game matches 1 if score east var-death matches 1 if score east-once var-death matches 1 run tellraw @a {"text":"========================\nA RED HAS BEEN ELIMINATED\n========================","bold":true,"color":"red"}


# Play sound
execute if score north var-death matches 1 if score north-once var-death matches 1 at @e[tag=player.north.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1
execute if score south var-death matches 1 if score south-once var-death matches 1 at @e[tag=player.south.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1
execute if score east var-death matches 1 if score east-once var-death matches 1 at @e[tag=player.east.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1
execute if score west var-death matches 1 if score west-once var-death matches 1 at @e[tag=player.west.marker] run playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.8 1


# If announced, turn off announcements
execute if score north var-death matches 1 if score north-once var-death matches 1 run scoreboard players set north-once var-death -1
execute if score south var-death matches 1 if score south-once var-death matches 1 run scoreboard players set south-once var-death -1
execute if score east var-death matches 1 if score east-once var-death matches 1 run scoreboard players set east-once var-death -1
execute if score west var-death matches 1 if score west-once var-death matches 1 run scoreboard players set west-once var-death -1


# Reset announcements once game is finished
execute if score start var-game matches 0 run scoreboard players set north-once var-death 0
execute if score start var-game matches 0 run scoreboard players set south-once var-death 0
execute if score start var-game matches 0 run scoreboard players set east-once var-death 0
execute if score start var-game matches 0 run scoreboard players set west-once var-death 0


# █▀▄ █▀▀ ▄▀█ ▀█▀ █░█
# █▄▀ ██▄ █▀█ ░█░ █▀█
## Make them a loser unless their the last one
execute if score north var-death matches 1 unless score player.count var-game matches ..1 run tag @a[tag=player.north] add loser
execute if score south var-death matches 1 unless score player.count var-game matches ..1 run tag @a[tag=player.south] add loser
execute if score east var-death matches 1 unless score player.count var-game matches ..1 run tag @a[tag=player.east] add loser
execute if score west var-death matches 1 unless score player.count var-game matches ..1 run tag @a[tag=player.west] add loser

## Score
# FFA
execute if score north var-death matches 1 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1
execute if score south var-death matches 1 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1
execute if score east var-death matches 1 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1
execute if score west var-death matches 1 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1

# 2v2
execute if score north var-death matches 1 run scoreboard players add team-nw var-death 1
execute if score west var-death matches 1 run scoreboard players add team-nw var-death 1
execute if score south var-death matches 1 run scoreboard players add team-se var-death 1
execute if score east var-death matches 1 run scoreboard players add team-se var-death 1

## Move on to next step
execute if score north var-death matches 1 run scoreboard players set north var-death 3
execute if score south var-death matches 1 run scoreboard players set south var-death 3
execute if score east var-death matches 1 run scoreboard players set east var-death 3
execute if score west var-death matches 1 run scoreboard players set west var-death 3

## Non-existence
execute if score north var-death matches 2 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1
execute if score south var-death matches 2 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1
execute if score east var-death matches 2 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1
execute if score west var-death matches 2 unless score player.count var-game matches ..1 run scoreboard players remove player.count var-game 1

execute if score north var-death matches 2 unless score team-se var-death matches 2 run scoreboard players add team-nw var-death 1
execute if score west var-death matches 2 unless score team-se var-death matches 2 run scoreboard players add team-nw var-death 1
execute if score south var-death matches 2 unless score team-nw var-death matches 2 run scoreboard players add team-se var-death 1
execute if score east var-death matches 2 unless score team-nw var-death matches 2 run scoreboard players add team-se var-death 1

execute if score north var-death matches 2 run scoreboard players set north var-death 4
execute if score south var-death matches 2 run scoreboard players set south var-death 4
execute if score east var-death matches 2 run scoreboard players set east var-death 4
execute if score west var-death matches 2 run scoreboard players set west var-death 4


# █▀█ █▀█ █▀ ▀█▀ ▄▄ █▀▄▀█ █▀█ █▀█ ▀█▀ █▀▀ █▀▄▀█
# █▀▀ █▄█ ▄█ ░█░ ░░ █░▀░█ █▄█ █▀▄ ░█░ ██▄ █░▀░█
## As long as the player is dead
# Try to tp them
execute if score north var-death matches 3..4 run tp @a[tag=player.north] @e[type=minecraft:marker,tag=player.north.marker,limit=1]
execute if score south var-death matches 3..4 run tp @a[tag=player.south] @e[type=minecraft:marker,tag=player.south.marker,limit=1]
execute if score east var-death matches 3..4 run tp @a[tag=player.east] @e[type=minecraft:marker,tag=player.east.marker,limit=1]
execute if score west var-death matches 3..4 run tp @a[tag=player.west] @e[type=minecraft:marker,tag=player.west.marker,limit=1]

# Try to set their gamemode
execute if score north var-death matches 3..4 run gamemode spectator @a[tag=player.north]
execute if score south var-death matches 3..4 run gamemode spectator @a[tag=player.south]
execute if score east var-death matches 3..4 run gamemode spectator @a[tag=player.east]
execute if score west var-death matches 3..4 run gamemode spectator @a[tag=player.west]

# Try to clear them
execute if score north var-death matches 3..4 run clear @a[tag=player.north]
execute if score south var-death matches 3..4 run clear @a[tag=player.south]
execute if score east var-death matches 3..4 run clear @a[tag=player.east]
execute if score west var-death matches 3..4 run clear @a[tag=player.west]

# Wait for them to respawn
execute if score north var-death matches 3 unless entity @a[tag=player.north,nbt={Health:0.0f}] run scoreboard players set north var-death -1
execute if score south var-death matches 3 unless entity @a[tag=player.south,nbt={Health:0.0f}] run scoreboard players set south var-death -1
execute if score east var-death matches 3 unless entity @a[tag=player.east,nbt={Health:0.0f}] run scoreboard players set east var-death -1
execute if score west var-death matches 3 unless entity @a[tag=player.west,nbt={Health:0.0f}] run scoreboard players set west var-death -1

execute if score north var-death matches 4 run scoreboard players set north var-death -1
execute if score south var-death matches 4 run scoreboard players set south var-death -1
execute if score east var-death matches 4 run scoreboard players set east var-death -1
execute if score west var-death matches 4 run scoreboard players set west var-death -1