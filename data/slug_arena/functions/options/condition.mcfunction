## Reset game
execute as @a if score @s options matches -1 run scoreboard players set reset var-game 1
execute as @a if score @s options matches -1 run tellraw @a {"text": "Game reset!", "color": "yellow"}

## Checks
# Location
execute as @a unless entity @s[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 run tellraw @a {"text": "You can't change the settings here!", "color": "red"}
execute as @a unless entity @s[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 at @s run execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5
execute as @a unless entity @s[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 run scoreboard players set @a options 0

# Game started
execute if score start var-game matches 1 as @a[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 run tellraw @a {"text": "The game has started, you can't change the settings!", "color": "red"}
execute if score start var-game matches 1 as @a[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 at @s run execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if score start var-game matches 1 as @a[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 run scoreboard players set @a options 0

# There are players
execute if entity @a[tag=player] as @a[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 run tellraw @a {"text": "There are players, you can't change the settings!", "color": "red"}
execute if entity @a[tag=player] as @a[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 at @s run execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5
execute if entity @a[tag=player] as @a[x=312,y=29,z=-282,distance=..10] unless score @s options matches -1..0 run scoreboard players set @a options 0

## Execution
execute as @a[x=312,y=29,z=-282,distance=..5] unless score start var-game matches 1 unless entity @s[tag=player,gamemode=adventure] run function slug_arena:options/execute

## Sound and reset
execute as @a unless score @s options matches 0 at @s run execute as @a at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1
execute as @a unless score @s options matches 0 run scoreboard players set @a options 0

