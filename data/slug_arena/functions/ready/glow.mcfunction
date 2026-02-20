#### North ####
# Off
execute if score ready.north variable matches 1 run team remove north.ready
execute if score ready.north variable matches 1 run execute unless score game.start variable matches 0 run effect clear @a[tag=player.north] minecraft:glowing

# On
execute if score ready.north variable matches 1 run team add north.ready
execute if score ready.north variable matches 1 run team modify north.ready color green
execute if score ready.north variable matches 1 run team join north.ready @a[tag=player.north]
execute if score ready.north variable matches 1 run execute unless score game.start variable matches 0 run effect give @a[tag=player.north] minecraft:glowing infinite 1 true


### South ####
# Off
execute if score ready.south variable matches 0 run team remove south.ready
execute if score ready.south variable matches 0 run execute unless score game.start variable matches 1 run effect clear @a[tag=player.south] minecraft:glowing

# On
execute if score ready.south variable matches 1 run team add south.ready
execute if score ready.south variable matches 1 run team modify south.ready color green
execute if score ready.south variable matches 1 run team join south.ready @a[tag=player.south]
execute if score ready.south variable matches 1 run execute unless score game.start variable matches 1 run effect give @a[tag=player.south] minecraft:glowing infinite 1 true


### East ####
# Off
execute if score ready.east variable matches 0 run team remove east.ready
execute if score ready.east variable matches 0 run execute unless score game.start variable matches 1 run effect clear @a[tag=player.east] minecraft:glowing

# On
execute if score ready.east variable matches 1 run team add east.ready
execute if score ready.east variable matches 1 run team modify east.ready color green
execute if score ready.east variable matches 1 run team join east.ready @a[tag=player.east]
execute if score ready.east variable matches 1 run execute unless score game.start variable matches 1 run effect give @a[tag=player.east] minecraft:glowing infinite 1 true


### West ####
# Off
execute if score ready.west variable matches 0 run team remove west.ready
execute if score ready.west variable matches 0 run execute unless score game.start variable matches 1 run effect clear @a[tag=player.west] minecraft:glowing

# On
execute if score ready.west variable matches 1 run team add west.ready
execute if score ready.west variable matches 1 run team modify west.ready color green
execute if score ready.west variable matches 1 run team join west.ready @a[tag=player.west]
execute if score ready.west variable matches 1 run execute unless score game.start variable matches 1 run effect give @a[tag=player.west] minecraft:glowing infinite 1 true