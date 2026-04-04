# Game
gamerule fallDamage false

## Variables
# var-game
scoreboard players set start var-game 0
scoreboard players set start-once var-game 0

scoreboard players set reset var-game 0
scoreboard players set reset.timer var-game 0

scoreboard players set door var-game 0
scoreboard players set door.sound var-game 0

scoreboard players set youretakingtoolong var-game 0
scoreboard players set youretakingtoolong-once var-game 0

scoreboard players set worldborder var-game 0
scoreboard players set worldborder-once var-game 0

scoreboard players set player.count var-game 4

# var-blaster
scoreboard players set west-change var-blaster 0
scoreboard players set east-change var-blaster 0
scoreboard players set north-change var-blaster 0
scoreboard players set south-change var-blaster 0

# var-ready
scoreboard players set count var-ready 0
scoreboard players set timer var-ready 0

# var-death
scoreboard players set north var-death 0
scoreboard players set south var-death 0
scoreboard players set east var-death 0
scoreboard players set west var-death 0

scoreboard players set north-once var-death 0
scoreboard players set south-once var-death 0
scoreboard players set east-once var-death 0
scoreboard players set west-once var-death 0

scoreboard players set team-nw var-death 0
scoreboard players set team-se var-death 0

# var-win
scoreboard players set win.ffa var-win 0
scoreboard players set win.2v2 var-win 0
scoreboard players set win.koth var-win 0

# var-fireworks
scoreboard players set fireworks-clock var-fireworks 0
scoreboard players set fireworks.ffa var-fireworks 0
scoreboard players set fireworks.2v2 var-fireworks 0


## The rest
gamerule fallDamage false
kill @e[type=item]
kill @e[type=minecraft:glow_item_frame,tag=weapon-display]

# Remove tags
tag @a remove player
tag @a remove player.north
tag @a remove player.south
tag @a remove player.east
tag @a remove player.west
tag @a remove loser

# Remove teams
team remove north
team remove south
team remove east
team remove west
team remove team-nw
team remove team-se

# Reset players
tp @a[gamemode=!creative] 312 30 -282
gamemode adventure @a[gamemode=!creative]
clear @a[gamemode=!creative]
effect clear @a
scoreboard players set @a var-id 0

# Reset world border
worldborder set 1000
schedule function slug_arena:reset/schedules/worldborder 16
scoreboard players set worldborder var-game 0

# Reset rooms
clone 302 96 -143 322 107 -127 302 96 -125 masked
clone 322 107 -3 302 96 -19 302 96 -37 masked
clone 366 96 -83 382 107 -63 348 96 -83 masked
clone 242 96 -83 258 107 -63 260 96 -83 masked

# Reset droppers
setblock 302 110 -32 air
setblock 271 110 -83 air
setblock 322 110 -114 air
setblock 353 110 -63 air
schedule function slug_arena:reset/schedules/dropper 4

# Blasters
scoreboard players set west-change var-blaster 0
scoreboard players set east-change var-blaster 0
scoreboard players set north-change var-blaster 0
scoreboard players set south-change var-blaster 0