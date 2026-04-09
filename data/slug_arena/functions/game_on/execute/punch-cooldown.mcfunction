execute as @a if score @s var-punch-timer matches 0 run attribute @s minecraft:generic.attack_damage base set 1
execute as @a unless score @s var-punch-timer matches ..0 run scoreboard players remove @s var-punch-timer 1

execute as @a[tag=player] unless score @s var-punch matches 0 run scoreboard players set @s var-punch-timer 100
execute as @a[tag=player] unless score @s var-punch matches 0 run attribute lazynor_cat minecraft:generic.attack_damage base set 0
execute as @a[tag=player] unless score @s var-punch matches 0 run scoreboard players set @s var-punch 0

execute as @a[tag=player] if score @s var-punch-timer matches 1.. run title @s actionbar "§c[█░░░░]"
execute as @a[tag=player] if score @s var-punch-timer matches 20.. run title @s actionbar "§c[██░░░]"
execute as @a[tag=player] if score @s var-punch-timer matches 40.. run title @s actionbar "§c[███░░]"
execute as @a[tag=player] if score @s var-punch-timer matches 60.. run title @s actionbar "§c[████░]"
execute as @a[tag=player] if score @s var-punch-timer matches 80.. run title @s actionbar "§c[█████]"
execute as @a[tag=player] if score @s var-punch-timer matches 0 run title @s actionbar ""