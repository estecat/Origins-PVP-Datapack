## FFA
execute if score game.mode variable matches 0 run execute if score player.count variable matches ..1 if score game.mode.ffa.win flag matches 0 run scoreboard players set game.mode.ffa.win flag 1
execute if score game.mode.ffa.win flag matches 1 run function slug_arena:game_on/execute/win-conditions/modes/ffa
execute if score game.mode.ffa.win flag matches 1 run scoreboard players set game.mode.ffa.win flag -1

## 2v2
execute if score game.mode variable matches 1 run execute if score north-west team-deaths matches 2 if score game.mode.2v2.win flag matches 0 run scoreboard players set game.mode.2v2.win flag 1
execute if score game.mode variable matches 1 run execute if score south-east team-deaths matches 2 if score game.mode.2v2.win flag matches 0 run scoreboard players set game.mode.2v2.win flag 1
execute if score game.mode.2v2.win flag matches 1 run function slug_arena:game_on/execute/win-conditions/modes/2v2
execute if score game.mode.2v2.win flag matches 1 run scoreboard players set game.mode.2v2.win flag -1

## KotH