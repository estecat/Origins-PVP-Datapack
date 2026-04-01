## FFA
execute if score mode var-game matches 0 run execute if score player.count var-game matches ..1 if score win.ffa var-win matches 0 run scoreboard players set win.ffa var-win 1
execute if score win.ffa var-win matches 1 run function slug_arena:game_on/execute/win-conditions/modes/ffa
execute if score win.ffa var-win matches 1 run scoreboard players set win.ffa var-win -1

## 2v2
execute if score mode var-game matches 1 run execute if score team-nw var-death matches 2 if score win.2v2 var-win matches 0 run scoreboard players set win.2v2 var-win 1
execute if score mode var-game matches 1 run execute if score team-se var-death matches 2 if score win.2v2 var-win matches 0 run scoreboard players set win.2v2 var-win 1
execute if score win.2v2 var-win matches 1 run function slug_arena:game_on/execute/win-conditions/modes/2v2
execute if score win.2v2 var-win matches 1 run scoreboard players set win.2v2 var-win -1

## KotH