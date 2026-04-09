scoreboard players set @s var-punch 0

execute as @a if score @s var-punch-timer matches 0 run attribute @s minecraft:generic.attack_damage base set 1
execute as @a unless score @s var-punch-timer matches ..0 run scoreboard players remove @s var-punch-timer 1