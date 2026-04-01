## BREAKDOWN ##
# execute

# unless score north var-ready matches 0
# unless score south var-ready matches 0
# unless score east var-ready matches 0
# unless score west var-ready matches 0

# unless score count var-ready matches ..1

# run scoreboard players add timer var-ready 1

execute unless score north var-ready matches 0 unless score south var-ready matches 0 unless score east var-ready matches 0 unless score west var-ready matches 0 unless score count var-ready matches ..1 run scoreboard players add timer var-ready 1

# Countdown
execute if score timer var-ready matches 19 run title @a[tag=player] title "5"
execute if score timer var-ready matches 19 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score timer var-ready matches 39 run title @a[tag=player] title "4"
execute if score timer var-ready matches 39 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score timer var-ready matches 59 run title @a[tag=player] title "3"
execute if score timer var-ready matches 59 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score timer var-ready matches 79 run title @a[tag=player] title "2"
execute if score timer var-ready matches 79 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score timer var-ready matches 99 run title @a[tag=player] title "1"
execute if score timer var-ready matches 99 run execute as @a at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.8 0.6

execute if score timer var-ready matches 119 run title @a[tag=player] title "BEGIN"
execute if score timer var-ready matches 119 run execute as @a at @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~ ~ 0.8 1