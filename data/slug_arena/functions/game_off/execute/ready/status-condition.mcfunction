# "OR" condition, all the commands it runs after MUST run when a condition is met.
scoreboard players set ready.status.set flag 0

execute if entity @a[tag=player.north] run scoreboard players set ready.status.set flag 1
execute if entity @a[tag=player.south] run scoreboard players set ready.status.set flag 1
execute if entity @a[tag=player.east] run scoreboard players set ready.status.set flag 1
execute if entity @a[tag=player.west] run scoreboard players set ready.status.set flag 1

execute if score status.set flag matches 1 run function slug_arena:game_off/execute/ready/status-execute