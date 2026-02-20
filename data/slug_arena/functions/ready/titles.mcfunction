# Clear
execute if score game.start variable matches 0 if score ready.north variable matches 0 run title @a[tag=player.north] clear
execute if score game.start variable matches 0 if score ready.south variable matches 0 run title @a[tag=player.south] clear
execute if score game.start variable matches 0 if score ready.east variable matches 0 run title @a[tag=player.east] clear
execute if score game.start variable matches 0 if score ready.west variable matches 0 run title @a[tag=player.west] clear

# Countdown
execute if score ready.timer variable matches 19 run title @a[tag=player] title "5"
execute if score ready.timer variable matches 19 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score ready.timer variable matches 39 run title @a[tag=player] title "4"
execute if score ready.timer variable matches 39 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score ready.timer variable matches 59 run title @a[tag=player] title "3"
execute if score ready.timer variable matches 59 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score ready.timer variable matches 79 run title @a[tag=player] title "2"
execute if score ready.timer variable matches 79 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score ready.timer variable matches 99 run title @a[tag=player] title "1"
execute if score ready.timer variable matches 99 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score ready.timer variable matches 119 run title @a[tag=player] title "BEGIN"
execute if score ready.timer variable matches 119 run execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.8 1