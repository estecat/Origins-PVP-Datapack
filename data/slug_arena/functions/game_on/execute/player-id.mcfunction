execute as @a[tag=player] unless score @s var-id = id var-game run tag @s remove player.north
execute as @a[tag=player] unless score @s var-id = id var-game run tag @s remove player.south
execute as @a[tag=player] unless score @s var-id = id var-game run tag @s remove player.east
execute as @a[tag=player] unless score @s var-id = id var-game run tag @s remove player.west
execute as @a[tag=player] unless score @s var-id = id var-game run tag @s remove player
execute as @a[tag=player] unless score @s var-id = id var-game run tag @s remove loser

execute as @a[tag=player] unless score @s var-id = id var-game run team remove north
execute as @a[tag=player] unless score @s var-id = id var-game run team remove south
execute as @a[tag=player] unless score @s var-id = id var-game run team remove east
execute as @a[tag=player] unless score @s var-id = id var-game run team remove west
execute as @a[tag=player] unless score @s var-id = id var-game run team remove team-nw
execute as @a[tag=player] unless score @s var-id = id var-game run team remove team-se

execute as @a[tag=player] unless score @s var-id = id var-game run clear @s
execute as @a[tag=player] unless score @s var-id = id var-game run effect clear @s
execute as @a[tag=player] unless score @s var-id = id var-game run tp 312 30 -282
execute as @a[tag=player] unless score @s var-id = id var-game run scoreboard players set @s var-id 0