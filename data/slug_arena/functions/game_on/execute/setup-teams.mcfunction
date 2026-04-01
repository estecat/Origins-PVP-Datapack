# ▄▄ ▄▄ ▄▄ ▄▄   █▀▀ █▀▀ ▄▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▀░ █▀░ █▀█   ░░ ░░ ░░ ░░
execute if score mode var-game matches 0 if entity @a[tag=player.north] run team add north
execute if score mode var-game matches 0 if entity @a[tag=player.south] run team add south
execute if score mode var-game matches 0 if entity @a[tag=player.east] run team add east
execute if score mode var-game matches 0 if entity @a[tag=player.west] run team add west

execute if score mode var-game matches 0 if entity @a[tag=player.north] run team modify north color green
execute if score mode var-game matches 0 if entity @a[tag=player.south] run team modify south color yellow
execute if score mode var-game matches 0 if entity @a[tag=player.east] run team modify east color red
execute if score mode var-game matches 0 if entity @a[tag=player.west] run team modify west color blue

execute if score mode var-game matches 0 if entity @a[tag=player.north] run team join north @a[tag=player.north]
execute if score mode var-game matches 0 if entity @a[tag=player.south] run team join south @a[tag=player.south]
execute if score mode var-game matches 0 if entity @a[tag=player.east] run team join east @a[tag=player.east]
execute if score mode var-game matches 0 if entity @a[tag=player.west] run team join west @a[tag=player.west]



# ▄▄ ▄▄ ▄▄ ▄▄   ▀█ █░█ ▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▄ ▀▄▀ █▄   ░░ ░░ ░░ ░░
execute if score mode var-game matches 1 run team add team-nw
execute if score mode var-game matches 1 run team add team-se

execute if score mode var-game matches 1 run team modify team-nw color blue
execute if score mode var-game matches 1 run team modify team-se color red

execute if score mode var-game matches 1 run team join team-nw @a[tag=player.north]
execute if score mode var-game matches 1 run team join team-nw @a[tag=player.west]

execute if score mode var-game matches 1 run team join team-se @a[tag=player.south]
execute if score mode var-game matches 1 run team join team-se @a[tag=player.east]

# Dust
execute if score mode var-game matches 1 as @a[team=team-nw] at @s run particle minecraft:dust 0.2 0.5 1 2 ~ ~2.5 ~ 0 0 0 0 1 force @a[team=team-nw]
execute if score mode var-game matches 1 as @a[team=team-se] at @s run particle minecraft:dust 1 0 0 2 ~ ~2.5 ~ 0 0 0 0 1 force @a[team=team-se]