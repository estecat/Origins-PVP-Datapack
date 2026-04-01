# Notes
Scoreboards were split to keep them readable in-game, combining all of it together makes for an unreadable and hard to debug scoreboard.

# Variables
## var-id
```
rand
{player}
```
`rand` [ -2147483648 - 2147483647 ] - A clock that acts as an ID for a game.  
`{player}` [ -2147483648 - 2147483647 ] - Player id from the last time they played.

## var-game
```
id
mode
kill.slugs

map
set-map

start
start-once

reset
reset.timer

door
door.sound

youretakingtoolong
youretakingtoolong-once

worldborder
worldborder-once

player.count
```
`id` [ -2147483648 - 2147483647 ] - For game sessions, tracking if players belong, if not they get kicked.  
`mode` [ 0 - 2 ]  
`kill.slugs` [ 0 - 1 ]

`map` [ -1 - inf ] - Current map.  
`set-map` [ -1 - inf ] - The trigger.

`start` [ 0 - 1 ] - Whether the game has started.  
`start-once` [ -1 - 1 ]

`reset` [ 0 - 1 ]  
`reset.timer` [ 0 - 300 ]

`door` [ 0 - 220 ]
`door.sound` [ -1 - 1 ]

`youretakingtoolong` [ 0 - 4800 ]  
`youretakingtoolong` [ 0 - 4800 ]

`count` [ 0 - 4 ]

## var-blaster
```
north
south
east
west

north-change
south-change
east-change
west-change
```
`N, S, E, W` [ 1 - 4 ] - Page number  
`N-C, S-C, E-C, W-C` [ -1 - 0 ] - Trigger for change

## var-ready
```
north
south
east
west

north-once
south-once
east-once
west-once

enable
count
timer
```
`N, S, E, W` [ -1 - 1 ] - -1 means the player is ignored if non-existant.  
`N-O, S-O, E-O, W-O` [ -1 - 1 ]  
`timer` [ 0 - 120 ] - Timer to begin.


## var-death
```
north
south
east
west

north-once
south-once
east-once
west-once

team-nw
team-se
```
`N, S, E, W` [ -1 - 4 ]  
> 0 = Player is alive  
> 1 = Player has died  
> 2 = Player doesn't exist  
> 3 = Do if player doesn't exist  
> 4 = Do if player does exist

Usual pattern goes, 0-1-4. But if any case that a player doesn't exist, then 0-2-3.

## var-win
```
win.ffa
win.2v2
win.koth
```
`win.ffa` [ 0 - 1 ]  
`win.2v2` [ 0 - 1 ]  
`win.koth` [ 0 - 1 ]

## var-fireworks
```
fireworks-clock
fireworks.ffa
fireworks.2v2
fireworks.koth
```
`fireworks-clock` [ 0 - 4 ] - The clock at which fireworks are dispensed.  
`fireworks.ffa` [ 0 - 4 ]  
`fireworks.2v2` [ 0 - 2 ]  
`fireworks.koth` [ 0 - 4 ]