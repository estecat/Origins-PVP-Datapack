## BREAKDOWN ##
# execute

# unless entity @a[tag=player.north]
# unless entity @a[tag=player.south]
# unless entity @a[tag=player.east]
# unless entity @a[tag=player.west]

# run function slug_arena:ready/status/reset-execute

execute unless entity @a[tag=player.north] unless entity @a[tag=player.south] unless entity @a[tag=player.east] unless entity @a[tag=player.west] run function slug_arena:ready/status/reset-execute