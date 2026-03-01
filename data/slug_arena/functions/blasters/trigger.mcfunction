
scoreboard players enable @a pages

# west trigger page
execute as @a[tag=player.west] if score @s pages matches 1 run scoreboard players remove blaster.west variable 1
execute as @a[tag=player.west] if score @s pages matches 2 run scoreboard players add blaster.west variable 1

execute as @a[tag=player.west] if score @s pages matches 1..2 run scoreboard players set page.change.west flag 0
execute as @a[tag=player.west] if score @s pages matches 1..2 at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~

execute as @a[tag=player.west] unless score @s pages matches 0 run scoreboard players set @s pages 0


# east trigger page
execute as @a[tag=player.east] if score @s pages matches 1 run scoreboard players remove blaster.east variable 1
execute as @a[tag=player.east] if score @s pages matches 2 run scoreboard players add blaster.east variable 1

execute as @a[tag=player.east] if score @s pages matches 1..2 run scoreboard players set page.change.east flag 0
execute as @a[tag=player.east] if score @s pages matches 1..2 at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~

execute as @a[tag=player.east] unless score @s pages matches 0 run scoreboard players set @s pages 0


# north trigger page
execute as @a[tag=player.north] if score @s pages matches 1 run scoreboard players remove blaster.north variable 1
execute as @a[tag=player.north] if score @s pages matches 2 run scoreboard players add blaster.north variable 1

execute as @a[tag=player.north] if score @s pages matches 1..2 run scoreboard players set page.change.north flag 0
execute as @a[tag=player.north] if score @s pages matches 1..2 at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~

execute as @a[tag=player.north] unless score @s pages matches 0 run scoreboard players set @s pages 0


# south trigger page
execute as @a[tag=player.south] if score @s pages matches 1 run scoreboard players remove blaster.south variable 1
execute as @a[tag=player.south] if score @s pages matches 2 run scoreboard players add blaster.south variable 1

execute as @a[tag=player.south] if score @s pages matches 1..2 run scoreboard players set page.change.south flag 0
execute as @a[tag=player.south] if score @s pages matches 1..2 at @s run playsound minecraft:item.book.page_turn master @s ~ ~ ~

execute as @a[tag=player.south] unless score @s pages matches 0 run scoreboard players set @s pages 0