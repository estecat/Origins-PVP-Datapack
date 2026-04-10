execute positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] if entity @s[tag=player] run tellraw @s {"text": "You are already part of another team", "color": "red"}
execute positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] if entity @a[tag=player] run effect give @s minecraft:slow_falling 1 1 true
execute positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] if entity @a[tag=player] run tp @s 312 30 -272

execute if entity @a[tag=player.west] positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] unless entity @s[tag=player] run tellraw @a[dx=1,dz=1] {"text": "There is already a player on this team!", "color": "red"}
execute if entity @a[tag=player.west] positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] run effect give @s minecraft:slow_falling 1 1 true
execute if entity @a[tag=player.west] positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] run tp @s 312 30 -272

execute unless entity @a[tag=player.west] positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] unless entity @s[tag=player] run tag @s add player
execute unless entity @a[tag=player.west] positioned 317 24 -273 as @a[dx=1,dz=1,dy=-56] run tag @s add player.west
execute positioned 317 24 -273 as @a[dx=1,dz=1,dy=-5] if entity @s[tag=player.west] run tp @s 175 128 -255