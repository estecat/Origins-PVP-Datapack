execute if score start-once var-game matches 0 run scoreboard players set door var-game 1
execute if score start-once var-game matches 0 run give @a[tag=player] minecraft:cooked_beef 3

execute if score start-once var-game matches 0 run scoreboard players operation id var-game = rand var-id
execute if score start-once var-game matches 0 unless score rand var-id matches 0 run scoreboard players operation @a[tag=player] var-id = rand var-id
execute if score start-once var-game matches 0 if score rand var-id matches 0 run scoreboard players set @a[tag=player] var-id 1

# ▄▄ ▄▄ ▄▄ ▄▄   █▀▀ █▀▀ ▄▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▀░ █▀░ █▀█   ░░ ░░ ░░ ░░
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.north] run team add north
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.south] run team add south
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.east] run team add east
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.west] run team add west

execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.north] run team modify north color green
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.south] run team modify south color yellow
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.east] run team modify east color red
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.west] run team modify west color blue

execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.north] run team join north @a[tag=player.north]
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.south] run team join south @a[tag=player.south]
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.east] run team join east @a[tag=player.east]
execute if score start-once var-game matches 0 if score mode var-game matches 0 if entity @a[tag=player.west] run team join west @a[tag=player.west]

# ▄▄ ▄▄ ▄▄ ▄▄   ▀█ █░█ ▀█   ▄▄ ▄▄ ▄▄ ▄▄
# ░░ ░░ ░░ ░░   █▄ ▀▄▀ █▄   ░░ ░░ ░░ ░░
execute if score start-once var-game matches 0 if score mode var-game matches 1 run team add team-nw
execute if score start-once var-game matches 0 if score mode var-game matches 1 run team add team-se

execute if score start-once var-game matches 0 if score mode var-game matches 1 run team modify team-nw color blue
execute if score start-once var-game matches 0 if score mode var-game matches 1 run team modify team-se color red

execute if score start-once var-game matches 0 if score mode var-game matches 1 run team join team-nw @a[tag=player.north]
execute if score start-once var-game matches 0 if score mode var-game matches 1 run team join team-nw @a[tag=player.west]
execute if score start-once var-game matches 0 if score mode var-game matches 1 run team join team-se @a[tag=player.south]
execute if score start-once var-game matches 0 if score mode var-game matches 1 run team join team-se @a[tag=player.east]

execute if score start-once var-game matches 0 run scoreboard players set start-once var-game -1