execute as @a[tag=player] unless score @s id = game.id variable run tag @s remove player.north
execute as @a[tag=player] unless score @s id = game.id variable run tag @s remove player.south
execute as @a[tag=player] unless score @s id = game.id variable run tag @s remove player.east
execute as @a[tag=player] unless score @s id = game.id variable run tag @s remove player.west
execute as @a[tag=player] unless score @s id = game.id variable run tag @s remove player
execute as @a[tag=player] unless score @s id = game.id variable run tag @s remove loser

execute as @a[tag=player] unless score @s id = game.id variable run team remove north
execute as @a[tag=player] unless score @s id = game.id variable run team remove south
execute as @a[tag=player] unless score @s id = game.id variable run team remove east
execute as @a[tag=player] unless score @s id = game.id variable run team remove west
execute as @a[tag=player] unless score @s id = game.id variable run team remove north-west
execute as @a[tag=player] unless score @s id = game.id variable run team remove south-east

execute as @a[tag=player] unless score @s id = game.id variable run clear @s
execute as @a[tag=player] unless score @s id = game.id variable run effect clear @s
execute as @a[tag=player] unless score @s id = game.id variable run tp 312 30 -282
execute as @a[tag=player] unless score @s id = game.id variable run scoreboard players set @s id 0