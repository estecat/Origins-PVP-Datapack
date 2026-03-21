# Game modes
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 1 run scoreboard players set game.mode variable 0
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 1 run tellraw @a {"text": "Game mod set to Free For All!", "color": "yellow"}

execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 2 run scoreboard players set game.mode variable 1
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 2 run tellraw @a {"text": "Game mod set to 2v2!", "color": "yellow"}

execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 3 run tellraw @a {"text": "This mode hasn't been implemented. Apologies!", "color": "gold"}
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 3 run execute as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 0.5
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 3 run scoreboard players set @a options 0


# Time
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 4 run time set day
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 4 run tellraw @a {"text": "Set time to day!", "color": "yellow"}

execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 5 run time set noon
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 5 run tellraw @a {"text": "Set time to noon!", "color": "yellow"}

execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 6 run time set night
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 6 run tellraw @a {"text": "Set time to night!", "color": "yellow"}

execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 7 run time set midnight
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 7 run tellraw @a {"text": "Set time to midnight!", "color": "yellow"}


# Weather
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 8 run weather clear
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 8 run tellraw @a {"text": "Cleared the weather!", "color": "yellow"}

execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 9 run weather rain
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 9 run tellraw @a {"text": "Set weather to rain!", "color": "yellow"}

execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 10 run weather thunder
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 10 run tellraw @a {"text": "Set weather to thunder!", "color": "yellow"}

# Maps
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 11 run scoreboard players set set-map variable 1
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 12 run scoreboard players set set-map variable 2
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 13 run scoreboard players set set-map variable 3
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 14 run scoreboard players set set-map variable 4
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 15 run scoreboard players set set-map variable 5
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 16 run scoreboard players set set-map variable 6
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 17 run scoreboard players set set-map variable 7
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 18 run scoreboard players set set-map variable 8
execute as @a[x=312,y=29,z=-282,distance=..5] if score @s options matches 19 run scoreboard players set set-map variable 9