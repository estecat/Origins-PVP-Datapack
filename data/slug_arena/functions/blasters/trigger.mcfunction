scoreboard players enable @a pages

# North
execute as @a[tag=player.north] if score @s pages matches 1 run scoreboard players remove north var-blaster 1
execute as @a[tag=player.north] if score @s pages matches 2 run scoreboard players add north var-blaster 1

execute as @a[tag=player.north] if score @s pages matches 1..2 run scoreboard players set north-change var-blaster 0
execute as @a[tag=player.north] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 303 100 -114

execute as @a[tag=player.north] unless score @s pages matches 0 run scoreboard players set @s pages 0


# South
execute as @a[tag=player.south] if score @s pages matches 1 run scoreboard players remove south var-blaster 1
execute as @a[tag=player.south] if score @s pages matches 2 run scoreboard players add south var-blaster 1

execute as @a[tag=player.south] if score @s pages matches 1..2 run scoreboard players set south-change var-blaster 0
execute as @a[tag=player.south] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 321 99 -32

execute as @a[tag=player.south] unless score @s pages matches 0 run scoreboard players set @s pages 0


# East
execute as @a[tag=player.east] if score @s pages matches 1 run scoreboard players remove east var-blaster 1
execute as @a[tag=player.east] if score @s pages matches 2 run scoreboard players add east var-blaster 1

execute as @a[tag=player.east] if score @s pages matches 1..2 run scoreboard players set east-change var-blaster 0
execute as @a[tag=player.east] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 353 100 -82

execute as @a[tag=player.east] unless score @s pages matches 0 run scoreboard players set @s pages 0


# West
execute as @a[tag=player.west] if score @s pages matches 1 run scoreboard players remove west var-blaster 1
execute as @a[tag=player.west] if score @s pages matches 2 run scoreboard players add west var-blaster 1

execute as @a[tag=player.west] if score @s pages matches 1..2 run scoreboard players set west-change var-blaster 0
execute as @a[tag=player.west] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 271 100 -64

execute as @a[tag=player.west] unless score @s pages matches 0 run scoreboard players set @s pages 0