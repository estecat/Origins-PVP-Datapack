title @a[tag=!player] actionbar [{"storage": "slug_arena:settings", "nbt": "map"}, " - ", {"storage": "slug_arena:settings", "nbt": "mode"}, " - [ ", {"storage": "slug_arena:settings", "nbt": "time"}, ", ", {"storage": "slug_arena:settings", "nbt": "weather"}, " ]"]

execute if score mode var-game matches 0 run data modify storage slug_arena:settings mode set value "FFA"
execute if score mode var-game matches 1 run data modify storage slug_arena:settings mode set value "2v2"
execute if score mode var-game matches 2 run data modify storage slug_arena:settings mode set value "KotH"