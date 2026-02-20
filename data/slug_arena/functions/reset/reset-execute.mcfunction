# Game
scoreboard players set game.reset.timer variable 0
scoreboard players set game.start variable 0
scoreboard players set door.status variable 0
scoreboard players set door.progress variable 0
scoreboard players set youretakingtoolong variable 0
scoreboard players set player.count variable 4
scoreboard players set ready.players variable 0
scoreboard players set north-west team-deaths 0
scoreboard players set south-east team-deaths 0

scoreboard players set game.start flag 0
scoreboard players set door.sound.open flag 0
scoreboard players set door.sound.close flag 0
scoreboard players set youretakingtoolong.sound flag 0

scoreboard players set player.north.died flag 0
scoreboard players set player.south.died flag 0
scoreboard players set player.east.died flag 0
scoreboard players set player.west.died flag 0

scoreboard players set game.mode.ffa.win flag 0
scoreboard players set game.mode.2v2.win flag 0

scoreboard players set game.win.fireworks flag 0
scoreboard players set game.mode.ffa.win.fireworks.north flag 0
scoreboard players set game.mode.ffa.win.fireworks.south flag 0
scoreboard players set game.mode.ffa.win.fireworks.east flag 0
scoreboard players set game.mode.ffa.win.fireworks.west flag 0

scoreboard players set game.mode.2v2.win.fireworks flag 0

scoreboard players set worldborder.event flag 0

gamerule fallDamage false
kill @e[type=item]
kill @e[type=minecraft:glow_item_frame,tag=weapon-display]

# World border
worldborder set 1000
schedule function slug_arena:reset/schedules/worldborder 16
scoreboard players set worldborder variable 0

# Tags
tag @a remove player
tag @a remove player.north
tag @a remove player.south
tag @a remove player.east
tag @a remove player.west
tag @a remove loser

# Teams
team remove north
team remove south
team remove east
team remove west
team remove north-west
team remove south-east

# Players
tp @a[gamemode=!creative] 312 30 -282
gamemode adventure @a[gamemode=!creative]
clear @a[gamemode=!creative]
effect clear @a[gamemode=!creative]

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
fill 300 102 -115 300 99 -113 minecraft:redstone_block
fill 354 102 -85 352 99 -85 minecraft:redstone_block
fill 324 102 -31 324 99 -33 minecraft:redstone_block
fill 270 102 -61 272 99 -61 minecraft:redstone_block

fill 300 102 -115 300 99 -113 air
fill 354 102 -85 352 99 -85 air
fill 324 102 -31 324 99 -33 air
fill 270 102 -61 272 99 -61 air

scoreboard players set game.reset variable 0