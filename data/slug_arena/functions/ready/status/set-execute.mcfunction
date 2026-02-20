# Player status: 1 = Ready, 0 = Not ready, -1 = Non-existent (Allow other players to join without this team)

## ready.{player} = 0
# If player isn't in ready area, set their status to 0
execute if entity @a[tag=player.north] unless entity @a[tag=player.north,x=310,y=98,z=-111,dx=4,dy=2,dz=2] run scoreboard players set ready.north variable 0
execute if entity @a[tag=player.north] unless entity @a[tag=player.north,x=310,y=98,z=-111,dx=4,dy=2,dz=2] run scoreboard players set ready.timer variable 0

execute if entity @a[tag=player.south] unless entity @a[tag=player.south,x=310,y=98,z=-37,dx=4,dy=2,dz=2] run scoreboard players set ready.south variable 0
execute if entity @a[tag=player.south] unless entity @a[tag=player.south,x=310,y=98,z=-37,dx=4,dy=2,dz=2] run scoreboard players set ready.timer variable 0

execute if entity @a[tag=player.east] unless entity @a[tag=player.east,x=348,y=98,z=-75,dx=2,dy=2,dz=4] run scoreboard players set ready.east variable 0
execute if entity @a[tag=player.east] unless entity @a[tag=player.east,x=348,y=98,z=-75,dx=2,dy=2,dz=4] run scoreboard players set ready.timer variable 0

execute if entity @a[tag=player.west] unless entity @a[tag=player.west,x=274,y=98,z=-75,dx=2,dy=2,dz=4] run scoreboard players set ready.west variable 0
execute if entity @a[tag=player.west] unless entity @a[tag=player.west,x=274,y=98,z=-75,dx=2,dy=2,dz=4] run scoreboard players set ready.timer variable 0

## ready.{player} = 1
# If player is in ready area, set their status to 1
execute unless score game.start variable matches 1 if entity @a[tag=player.north,x=310,y=98,z=-111,dx=4,dy=2,dz=2] run scoreboard players set ready.north variable 1
execute unless score game.start variable matches 1 if entity @a[tag=player.south,x=310,y=98,z=-37,dx=4,dy=2,dz=2] run scoreboard players set ready.south variable 1
execute unless score game.start variable matches 1 if entity @a[tag=player.east] if entity @a[tag=player.east,x=348,y=98,z=-75,dx=2,dy=2,dz=4] run scoreboard players set ready.east variable 1
execute unless score game.start variable matches 1 if entity @a[tag=player.west,x=274,y=98,z=-75,dx=2,dy=2,dz=4] run scoreboard players set ready.west variable 1

## ready.{player} = -1
# Unless player exists : Unless game mode is ffa : Set their ready to -1
execute unless entity @a[tag=player.north] run scoreboard players set ready.north variable -1
execute unless entity @a[tag=player.south] run scoreboard players set ready.south variable -1
execute unless entity @a[tag=player.east] run scoreboard players set ready.east variable -1
execute unless entity @a[tag=player.west] run scoreboard players set ready.west variable -1