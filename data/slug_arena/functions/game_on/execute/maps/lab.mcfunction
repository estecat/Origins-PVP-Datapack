execute as @a unless score @s var-lab matches ..0 run scoreboard players remove @s var-lab 1
execute as @e[type=marker,tag=lab.pad] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] run scoreboard players set @s var-lab 10

execute as @e[type=marker,tag=lab.pad] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run playsound slug_arena:snow_ball_launcher master @a ~1 ~ ~1 3

execute as @e[type=marker,tag=lab.pad.north] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[0d,-0.22,1.57]}
execute as @e[type=marker,tag=lab.pad.south] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[0d,-0.22,-1.57]}
execute as @e[type=marker,tag=lab.pad.east] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[-1.57,-0.22,0d]}
execute as @e[type=marker,tag=lab.pad.west] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[1.57,-0.22,0d]}

execute as @e[type=marker,tag=lab.pad.north.back] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[0d,0d,-1.6]}
execute as @e[type=marker,tag=lab.pad.south.back] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[0d,0d,1.6]}
execute as @e[type=marker,tag=lab.pad.east.back] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[1.6,0d,0d]}
execute as @e[type=marker,tag=lab.pad.west.back] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run summon minecraft:snowball ~1 ~1.5 ~1 {Motion:[-1.6,0d,0d]}

execute as @e[type=marker,tag=lab.pad] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches 10 run ride @p[gamemode=!spectator] mount @e[type=minecraft:snowball,limit=1,sort=nearest]



execute as @e[type=marker,tag=lab.jump] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches ..0 run data modify entity @s Motion[1] set value 1.5
execute as @e[type=marker,tag=lab.jump] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches ..0 run playsound slug_arena:snow_ball_launcher master @a ~1 ~ ~1 3 0.5
execute as @e[type=marker,tag=lab.jump] at @s positioned ~-1 ~ ~-1 as @a[dx=1,dz=1] if score @s var-lab matches ..0 run scoreboard players set @s var-lab 65

execute as @a[tag=player] unless score @s var-lab matches 0 run data modify entity @s FallDistance set value 0

execute as @a unless score @s var-lab matches ..0 run scoreboard players remove @s var-lab 1