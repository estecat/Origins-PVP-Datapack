# For new players
execute as @a unless score @s id = @s id run scoreboard players set @s id 0

# If players are tied to a game session
execute as @a unless score @s id matches 0 run tag @s remove player.north
execute as @a unless score @s id matches 0 run tag @s remove player.south
execute as @a unless score @s id matches 0 run tag @s remove player.east
execute as @a unless score @s id matches 0 run tag @s remove player.west
execute as @a unless score @s id matches 0 run tag @s remove player
execute as @a unless score @s id matches 0 run tag @s remove loser

execute as @a unless score @s id matches 0 run team remove north
execute as @a unless score @s id matches 0 run team remove south
execute as @a unless score @s id matches 0 run team remove east
execute as @a unless score @s id matches 0 run team remove west
execute as @a unless score @s id matches 0 run team remove north-west
execute as @a unless score @s id matches 0 run team remove south-east

execute as @a unless score @s id matches 0 run clear @s
execute as @a unless score @s id matches 0 run effect clear @s
execute as @a unless score @s id matches 0 run tp 312 30 -282
execute as @a unless score @s id matches 0 run scoreboard players set @s id 0