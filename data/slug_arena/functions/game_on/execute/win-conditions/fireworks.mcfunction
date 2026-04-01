## Clock
execute if score fireworks-clock var-fireworks matches 1.. run scoreboard players add fireworks-clock var-fireworks 1
execute if score fireworks-clock var-fireworks matches 4.. run scoreboard players set fireworks-clock var-fireworks 1

## Marker
execute if score fireworks-clock var-fireworks matches 1 run spreadplayers 312 -73 32 40 false @e[type=minecraft:marker,tag=firework.marker]
execute if score fireworks-clock var-fireworks matches 1 as @e[type=minecraft:marker,tag=firework.marker] at @s run tp @s ~ 140 ~


## FFA
execute if score fireworks.ffa var-fireworks matches 1 run execute if score fireworks-clock var-fireworks matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;4312372],FadeColors:[I;14602026]}]}}}}
execute if score fireworks.ffa var-fireworks matches 2 run execute if score fireworks-clock var-fireworks matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;14602026],FadeColors:[I;14188952,15435844]}]}}}}
execute if score fireworks.ffa var-fireworks matches 3 run execute if score fireworks-clock var-fireworks matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;11743532],FadeColors:[I;8073150]}]}}}}
execute if score fireworks.ffa var-fireworks matches 4 run execute if score fireworks-clock var-fireworks matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;2437522],FadeColors:[I;2651799,4312372]}]}}}}

## 2v2
execute if score fireworks.2v2 var-fireworks matches 1 run execute if score fireworks-clock var-fireworks matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;2437522,4312372]}]}}}}
execute if score fireworks.2v2 var-fireworks matches 2 run execute if score fireworks-clock var-fireworks matches 1 at @e[type=marker,tag=firework.marker,limit=1] run summon firework_rocket ~ ~1 ~ {LifeTime:40,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:false,Trail:true,Colors:[I;11743532,14602026]}]}}}}