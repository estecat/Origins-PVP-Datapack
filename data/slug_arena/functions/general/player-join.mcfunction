execute unless entity lazynor_cat run scoreboard players set lazynor_cat var-join 0
execute if entity lazynor_cat if score lazynor_cat var-join matches 0 at lazynor_cat run summon lightning_bolt
execute if entity lazynor_cat run scoreboard players set lazynor_cat var-join 1

execute unless entity estecat run scoreboard players set estecat var-join 0
execute if entity estecat if score estecat var-join matches 0 as @a at @s run playsound ambient.cave master @s ~ ~ ~
execute if entity estecat run scoreboard players set estecat var-join 1