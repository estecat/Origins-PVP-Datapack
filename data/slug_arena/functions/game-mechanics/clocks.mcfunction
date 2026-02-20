# ▀█▀ █▀█ █▀█   █░░ █▀█ █▄░█ █▀▀
# ░█░ █▄█ █▄█   █▄▄ █▄█ █░▀█ █▄█
execute if score game.start variable matches 1 unless score game.reset.timer variable matches 1.. run scoreboard players add youretakingtoolong variable 2

execute if score game.start variable matches 1 if score youretakingtoolong variable matches 4800.. run effect give @a[tag=player] minecraft:glowing 1 1 true
execute if score game.start variable matches 1 if score youretakingtoolong variable matches 4800.. if score youretakingtoolong.sound flag matches 0 as @a at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 0.8 1
execute if score game.start variable matches 1 if score youretakingtoolong variable matches 4800.. if score youretakingtoolong.sound flag matches 0 run scoreboard players set youretakingtoolong.sound flag -1



# █▀█ █▀▀ █▀ █▀▀ ▀█▀   ▀█▀ █ █▀▄▀█ █▀▀ █▀█
# █▀▄ ██▄ ▄█ ██▄ ░█░   ░█░ █ █░▀░█ ██▄ █▀▄
execute if score game.reset.timer variable matches 1.. run scoreboard players add game.reset.timer variable 1



# █▀▀ █ █▀█ █▀▀ █░█░█ █▀█ █▀█ █▄▀ █▀
# █▀░ █ █▀▄ ██▄ ▀▄▀▄▀ █▄█ █▀▄ █░█ ▄█
execute if score game.win.fireworks flag matches 1.. run scoreboard players add game.win.fireworks flag 1
execute if score game.win.fireworks flag matches 4.. run scoreboard players set game.win.fireworks flag 1

execute if score game.win.fireworks flag matches 1 run spreadplayers 312 -73 32 40 false @e[type=minecraft:marker,tag=firework.marker]
execute if score game.win.fireworks flag matches 1 as @e[type=minecraft:marker,tag=firework.marker] at @s run tp @s ~ 140 ~