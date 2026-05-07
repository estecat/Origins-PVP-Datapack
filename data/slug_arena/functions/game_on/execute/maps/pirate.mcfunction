## Tagging
execute unless entity @a[tag=in-cannon.north] at @e[type=marker,tag=pirate.cannon-north] as @a[tag=player,distance=..1] run tag @s add in-cannon.north
execute unless entity @a[tag=in-cannon.south] at @e[type=marker,tag=pirate.cannon-south] as @a[tag=player,distance=..1] run tag @s add in-cannon.south
execute unless entity @a[tag=in-cannon.east] at @e[type=marker,tag=pirate.cannon-east] as @a[tag=player,distance=..1] run tag @s add in-cannon.east
execute unless entity @a[tag=in-cannon.west] at @e[type=marker,tag=pirate.cannon-west] as @a[tag=player,distance=..1] run tag @s add in-cannon.west

execute at @e[type=marker,tag=pirate.cannon-north] as @a unless entity @s[tag=in-cannon.north,distance=..1] unless score north-fuse var-pirate matches 60.. run tag @s remove in-cannon.north
execute at @e[type=marker,tag=pirate.cannon-south] as @a unless entity @s[tag=in-cannon.south,distance=..1] unless score south-fuse var-pirate matches 60.. run tag @s remove in-cannon.south
execute at @e[type=marker,tag=pirate.cannon-east] as @a unless entity @s[tag=in-cannon.east,distance=..1] unless score east-fuse var-pirate matches 60.. run tag @s remove in-cannon.east
execute at @e[type=marker,tag=pirate.cannon-west] as @a unless entity @s[tag=in-cannon.west,distance=..1] unless score west-fuse var-pirate matches 60.. run tag @s remove in-cannon.west


## Reset scores
execute unless entity @a[tag=in-cannon.north] unless score north-fuse var-pirate matches 0 run playsound block.fire.extinguish master @a 312 101 -83 0.5 1 0
execute unless entity @a[tag=in-cannon.south] unless score south-fuse var-pirate matches 0 run playsound block.fire.extinguish master @a 312 101 -63 0.5 1 0
execute unless entity @a[tag=in-cannon.east] unless score east-fuse var-pirate matches 0 run playsound block.fire.extinguish master @a 322 101 -73 0.5 1 0
execute unless entity @a[tag=in-cannon.west] unless score west-fuse var-pirate matches 0 run playsound block.fire.extinguish master @a 302 101 -73 0.5 1 0

execute unless entity @a[tag=in-cannon.north] run scoreboard players set north-fuse var-pirate 0
execute unless entity @a[tag=in-cannon.south] run scoreboard players set south-fuse var-pirate 0
execute unless entity @a[tag=in-cannon.east] run scoreboard players set east-fuse var-pirate 0
execute unless entity @a[tag=in-cannon.west] run scoreboard players set west-fuse var-pirate 0


## Ticker
execute if entity @a[tag=in-cannon.north] run scoreboard players add north-fuse var-pirate 1
execute if entity @a[tag=in-cannon.south] run scoreboard players add south-fuse var-pirate 1
execute if entity @a[tag=in-cannon.east] run scoreboard players add east-fuse var-pirate 1
execute if entity @a[tag=in-cannon.west] run scoreboard players add west-fuse var-pirate 1


## Execution
execute unless score north-fuse var-pirate matches 0 run particle smoke 312 102 -83 0.1 0 0.1 0 1
execute unless score south-fuse var-pirate matches 0 run particle smoke 312 102 -63 0.1 0 0.1 0 1
execute unless score east-fuse var-pirate matches 0 run particle smoke 322 102 -73 0.1 0 0.1 0 1
execute unless score west-fuse var-pirate matches 0 run particle smoke 302 102 -73 0.1 0 0.1 0 1


execute if score north-fuse var-pirate matches 1 run playsound entity.tnt.primed master @a 312 102 -83 1 1 0
execute if score south-fuse var-pirate matches 1 run playsound entity.tnt.primed master @a 312 102 -63 1 1 0
execute if score east-fuse var-pirate matches 1 run playsound entity.tnt.primed master @a 322 102 -73 1 1 0
execute if score west-fuse var-pirate matches 1 run playsound entity.tnt.primed master @a 302 102 -73 1 1 0


execute if score north-fuse var-pirate matches 60 as @a[tag=in-cannon.north] run tp @s 312 101.5 -86 180 0
execute if score south-fuse var-pirate matches 60 as @a[tag=in-cannon.south] run tp @s 312 101.5 -60 0 0
execute if score east-fuse var-pirate matches 60 as @a[tag=in-cannon.east] run tp @s 325 101.5 -73 -90 0
execute if score west-fuse var-pirate matches 60 as @a[tag=in-cannon.west] run tp @s 299 101.5 -73 90 0


execute if score north-fuse var-pirate matches 62 run playsound entity.generic.explode master @a 312 101.5 -86 3 1 0
execute if score south-fuse var-pirate matches 62 run playsound entity.generic.explode master @a 312 101.5 -60 3 1 0
execute if score east-fuse var-pirate matches 62 run playsound entity.generic.explode master @a 325 101.5 -73 3 1 0
execute if score west-fuse var-pirate matches 62 run playsound entity.generic.explode master @a 299 101.5 -73 3 1 0

execute if score north-fuse var-pirate matches 62 as @a[tag=in-cannon.north] run data modify entity @s Motion[1] set value 1.2d
execute if score south-fuse var-pirate matches 62 as @a[tag=in-cannon.south] run data modify entity @s Motion[1] set value 1.2d
execute if score east-fuse var-pirate matches 62 as @a[tag=in-cannon.east] run data modify entity @s Motion[1] set value 1.2d
execute if score west-fuse var-pirate matches 62 as @a[tag=in-cannon.west] run data modify entity @s Motion[1] set value 1.2d

execute if score north-fuse var-pirate matches 62 as @a[tag=in-cannon.north] run data modify entity @s Motion[2] set value -1.7d
execute if score south-fuse var-pirate matches 62 as @a[tag=in-cannon.south] run data modify entity @s Motion[2] set value 1.7d
execute if score east-fuse var-pirate matches 62 as @a[tag=in-cannon.east] run data modify entity @s Motion[0] set value 1.7d
execute if score west-fuse var-pirate matches 62 as @a[tag=in-cannon.west] run data modify entity @s Motion[0] set value -1.7d


execute if score north-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 312 101.5 -86 0 0 0 0.03 50
execute if score south-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 312 101.5 -60 0 0 0 0.03 50
execute if score east-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 325 101.5 -73 0 0 0 0.03 50
execute if score west-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 299 101.5 -73 0 0 0 0.03 50

execute if score north-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 312 101.5 -86 0 0 0 0.01 50
execute if score south-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 312 101.5 -60 0 0 0 0.01 50
execute if score east-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 325 101.5 -73 0 0 0 0.01 50
execute if score west-fuse var-pirate matches 65.. run particle campfire_cosy_smoke 299 101.5 -73 0 0 0 0.01 50

execute if score north-fuse var-pirate matches 65.. run particle large_smoke 312 101.5 -86 0 0 0 0.1 30
execute if score south-fuse var-pirate matches 65.. run particle large_smoke 312 101.5 -60 0 0 0 0.1 30
execute if score east-fuse var-pirate matches 65.. run particle large_smoke 325 101.5 -73 0 0 0 0.1 30
execute if score west-fuse var-pirate matches 65.. run particle large_smoke 299 101.5 -73 0 0 0 0.1 30


# End
execute if score north-fuse var-pirate matches 65.. as @a[tag=in-cannon.north] run tag @s remove in-cannon.north
execute if score south-fuse var-pirate matches 65.. as @a[tag=in-cannon.south] run tag @s remove in-cannon.south
execute if score east-fuse var-pirate matches 65.. as @a[tag=in-cannon.east] run tag @s remove in-cannon.east
execute if score west-fuse var-pirate matches 65.. as @a[tag=in-cannon.west] run tag @s remove in-cannon.west

execute if score north-fuse var-pirate matches 65.. run scoreboard players set north-fuse var-pirate 0
execute if score south-fuse var-pirate matches 65.. run scoreboard players set south-fuse var-pirate 0
execute if score east-fuse var-pirate matches 65.. run scoreboard players set east-fuse var-pirate 0
execute if score west-fuse var-pirate matches 65.. run scoreboard players set west-fuse var-pirate 0