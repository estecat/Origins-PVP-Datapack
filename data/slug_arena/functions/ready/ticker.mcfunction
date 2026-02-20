## BREAKDOWN ##
# execute

# unless score ready.north variable matches 0
# unless score ready.south variable matches 0
# unless score ready.east variable matches 0
# unless score ready.west variable matches 0

# unless score ready.players variable matches ..1

# unless score game.start variable matches 1

# run scoreboard players add ready.timer variable 1

execute unless score ready.north variable matches 0 unless score ready.south variable matches 0 unless score ready.east variable matches 0 unless score ready.west variable matches 0 unless score ready.players variable matches ..1 unless score game.start variable matches 1 run scoreboard players add ready.timer variable 1
