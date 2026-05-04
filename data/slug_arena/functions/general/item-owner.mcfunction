execute as @e[type=item] unless data entity @s Thrower at @s run data modify storage slug_arena:item Owner set from entity @p UUID
execute as @e[type=item] unless data entity @s Thrower run data modify entity @s Owner set from storage slug_arena:item UUID

execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower