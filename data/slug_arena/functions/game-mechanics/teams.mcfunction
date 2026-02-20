# ▄▄ ▄▄ ▄▄ ▄▄   █▀▀ █▀▀ ▄▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▀░ █▀░ █▀█   ░░ ░░ ░░ ░░
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.north] run team add north
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.south] run team add south
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.east] run team add east
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.west] run team add west

execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.north] run team modify north color green
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.south] run team modify south color yellow
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.east] run team modify east color red
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.west] run team modify west color blue

execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.north] run team join north @a[tag=player.north]
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.south] run team join south @a[tag=player.south]
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.east] run team join east @a[tag=player.east]
execute if score game.start variable matches 1 if score game.mode variable matches 0 if entity @a[tag=player.west] run team join west @a[tag=player.west]



# ▄▄ ▄▄ ▄▄ ▄▄   ▀█ █░█ ▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▄ ▀▄▀ █▄   ░░ ░░ ░░ ░░
execute if score game.start variable matches 1 if score game.mode variable matches 1 run team add north-west
execute if score game.start variable matches 1 if score game.mode variable matches 1 run team add south-east

execute if score game.start variable matches 1 if score game.mode variable matches 1 run team modify north-west color blue
execute if score game.start variable matches 1 if score game.mode variable matches 1 run team modify south-east color red

execute if score game.start variable matches 1 if score game.mode variable matches 1 run team join north-west @a[tag=player.north]
execute if score game.start variable matches 1 if score game.mode variable matches 1 run team join north-west @a[tag=player.west]

execute if score game.start variable matches 1 if score game.mode variable matches 1 run team join south-east @a[tag=player.south]
execute if score game.start variable matches 1 if score game.mode variable matches 1 run team join south-east @a[tag=player.east]

# Dust
execute if score game.start variable matches 1 if score game.mode variable matches 1 as @a[team=north-west] at @s run particle minecraft:dust 0.2 0.5 1 2 ~ ~2.5 ~ 0 0 0 0 1 force @a[team=north-west]
execute if score game.start variable matches 1 if score game.mode variable matches 1 as @a[team=south-east] at @s run particle minecraft:dust 1 0 0 2 ~ ~2.5 ~ 0 0 0 0 1 force @a[team=south-east]