scoreboard players enable @a pages

## Scroll
# Down
execute as @a[tag=player.north] if score @s pages matches 1 unless score north-chose var-blaster matches 1 run scoreboard players remove north var-blaster 1
execute as @a[tag=player.south] if score @s pages matches 1 unless score south-chose var-blaster matches 1 run scoreboard players remove south var-blaster 1
execute as @a[tag=player.east] if score @s pages matches 1 unless score east-chose var-blaster matches 1 run scoreboard players remove east var-blaster 1
execute as @a[tag=player.west] if score @s pages matches 1 unless score west-chose var-blaster matches 1 run scoreboard players remove west var-blaster 1

# Up
execute as @a[tag=player.north] if score @s pages matches 2 unless score north-chose var-blaster matches 1 run scoreboard players add north var-blaster 1
execute as @a[tag=player.south] if score @s pages matches 2 unless score south-chose var-blaster matches 1 run scoreboard players add south var-blaster 1
execute as @a[tag=player.east] if score @s pages matches 2 unless score east-chose var-blaster matches 1 run scoreboard players add east var-blaster 1
execute as @a[tag=player.west] if score @s pages matches 2 unless score west-chose var-blaster matches 1 run scoreboard players add west var-blaster 1

## Boundary
# Maximum
execute if score north var-blaster matches ..0 run scoreboard players set north var-blaster 4
execute if score south var-blaster matches ..0 run scoreboard players set south var-blaster 4
execute if score east var-blaster matches ..0 run scoreboard players set east var-blaster 4
execute if score west var-blaster matches ..0 run scoreboard players set west var-blaster 4

# Minimum
execute if score north var-blaster matches 5.. run scoreboard players set north var-blaster 1
execute if score south var-blaster matches 5.. run scoreboard players set south var-blaster 1
execute if score east var-blaster matches 5.. run scoreboard players set east var-blaster 1
execute if score west var-blaster matches 5.. run scoreboard players set west var-blaster 1



# Refresh
execute as @a[tag=player.north] if score @s pages matches 1..2 run scoreboard players set north-refresh var-blaster 1
execute as @a[tag=player.south] if score @s pages matches 1..2 run scoreboard players set south-refresh var-blaster 1
execute as @a[tag=player.east] if score @s pages matches 1..2 run scoreboard players set east-refresh var-blaster 1
execute as @a[tag=player.west] if score @s pages matches 1..2 run scoreboard players set west-refresh var-blaster 1

# Sound
execute as @a[tag=player.north] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 303 100 -114
execute as @a[tag=player.south] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 321 99 -32
execute as @a[tag=player.east] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 353 100 -82
execute as @a[tag=player.west] if score @s pages matches 1..2 run playsound minecraft:item.book.page_turn master @s 271 100 -64

# Reset options
execute as @a[tag=player.north] unless score @s pages matches 0 run scoreboard players set @s pages 0
execute as @a[tag=player.south] unless score @s pages matches 0 run scoreboard players set @s pages 0
execute as @a[tag=player.east] unless score @s pages matches 0 run scoreboard players set @s pages 0
execute as @a[tag=player.west] unless score @s pages matches 0 run scoreboard players set @s pages 0