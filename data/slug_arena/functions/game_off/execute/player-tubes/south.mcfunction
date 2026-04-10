execute positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] if entity @s[tag=player] run tellraw @s {"text": "You are already part of another team", "color": "red"}
execute positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] if entity @s[tag=player] run effect give @s minecraft:slow_falling 1 1 true
execute positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] if entity @s[tag=player] run tp @s 312 30 -272

execute if entity @a[tag=player.south] positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] unless entity @s[tag=player] run tellraw @a[dx=1,dz=1] {"text": "There is already a player on this team!", "color": "red"}
execute if entity @a[tag=player.south] positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] run effect give @s minecraft:slow_falling 1 1 true
execute if entity @a[tag=player.south] positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] run tp @s 312 30 -272

execute unless entity @a[tag=player.south] positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] unless entity @s[tag=player] run tag @s add player
execute unless entity @a[tag=player.south] positioned 305 24 -267 as @a[dx=1,dz=1,dy=-56] run tag @s add player.south
execute positioned 305 24 -267 as @a[dx=1,dz=1,dy=-5] if entity @s[tag=player.south] run tp @s 187 128 -255