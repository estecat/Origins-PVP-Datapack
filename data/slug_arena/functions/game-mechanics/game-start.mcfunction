execute if score ready.timer variable matches 120 run scoreboard players set game.start variable 1

execute if score game.start variable matches 1 run gamerule fallDamage true
execute if score game.start variable matches 0 run gamerule fallDamage false

# Start stuff
execute if score game.start variable matches 1 if score game.start flag matches 0 run give @a[tag=player] minecraft:cooked_beef 3
execute if score game.start variable matches 1 if score game.start flag matches 0 run kill @e[type=minecraft:glow_item_frame,tag=weapon-display]

execute if score game.start variable matches 1 if score game.start flag matches 0 run scoreboard players set game.start flag -1