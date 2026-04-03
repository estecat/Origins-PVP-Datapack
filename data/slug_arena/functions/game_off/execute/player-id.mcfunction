# For new players
execute as @a unless score @s var-id = @s var-id run scoreboard players set @s var-id 0

# If players are tied to a game session
execute as @a unless score @s var-id matches 0 run tag @s remove player.north
execute as @a unless score @s var-id matches 0 run tag @s remove player.south
execute as @a unless score @s var-id matches 0 run tag @s remove player.east
execute as @a unless score @s var-id matches 0 run tag @s remove player.west
execute as @a unless score @s var-id matches 0 run tag @s remove player
execute as @a unless score @s var-id matches 0 run tag @s remove loser

execute as @a unless score @s var-id matches 0 run team leave @s

execute as @a unless score @s var-id matches 0 run clear @s
execute as @a unless score @s var-id matches 0 run effect clear @s
execute as @a unless score @s var-id matches 0 run tp 312 30 -282
execute as @a unless score @s var-id matches 0 run scoreboard players set @s var-id 0