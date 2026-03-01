# When page is below minimum, set to maximum
execute if score blaster.west variable matches ..0 run scoreboard players set blaster.west variable 4
execute if score blaster.east variable matches ..0 run scoreboard players set blaster.east variable 4
execute if score blaster.north variable matches ..0 run scoreboard players set blaster.north variable 4
execute if score blaster.south variable matches ..0 run scoreboard players set blaster.south variable 4

# When page is above maximum, set to minimum
execute if score blaster.west variable matches 5.. run scoreboard players set blaster.west variable 1
execute if score blaster.east variable matches 5.. run scoreboard players set blaster.east variable 1
execute if score blaster.north variable matches 5.. run scoreboard players set blaster.north variable 1
execute if score blaster.south variable matches 5.. run scoreboard players set blaster.south variable 1



# west flag setters
execute if score blaster.west variable matches 1 if score page.change.west flag matches 0 run scoreboard players set page.change.west flag 1
execute if score blaster.west variable matches 2 if score page.change.west flag matches 0 run scoreboard players set page.change.west flag 2
execute if score blaster.west variable matches 3 if score page.change.west flag matches 0 run scoreboard players set page.change.west flag 3
execute if score blaster.west variable matches 4 if score page.change.west flag matches 0 run scoreboard players set page.change.west flag 4
execute if score page.change.west flag matches 1.. run kill @e[tag=weapon-display.west]


# set first page west
execute if score page.change.west flag matches 1 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 1 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 1 run summon glow_item_frame 270 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 1 run summon glow_item_frame 272 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 1 run summon glow_item_frame 271 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 1 run summon glow_item_frame 270 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.west"]}

# set second page west
execute if score page.change.west flag matches 2 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 2 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 2 run summon glow_item_frame 270 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 2 run summon glow_item_frame 272 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 2 run summon glow_item_frame 271 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 2 run summon glow_item_frame 270 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.west"]}

# set third page west
execute if score page.change.west flag matches 3 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 3 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 3 run summon glow_item_frame 270 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 3 run summon glow_item_frame 272 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 3 run summon glow_item_frame 271 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 3 run summon glow_item_frame 270 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.west"]}

# set forth page west
execute if score page.change.west flag matches 4 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.west"]}
execute if score page.change.west flag matches 4 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.west"]}


# west flag reset
execute unless score page.change.west flag matches -1..0 run scoreboard players set page.change.west flag -1



# east flag setters
execute if score blaster.east variable matches 1 if score page.change.east flag matches 0 run scoreboard players set page.change.east flag 1
execute if score blaster.east variable matches 2 if score page.change.east flag matches 0 run scoreboard players set page.change.east flag 2
execute if score blaster.east variable matches 3 if score page.change.east flag matches 0 run scoreboard players set page.change.east flag 3
execute if score blaster.east variable matches 4 if score page.change.east flag matches 0 run scoreboard players set page.change.east flag 4
execute if score page.change.east flag matches 1.. run kill @e[tag=weapon-display.east]

# set first page east
execute if score page.change.east flag matches 1 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 1 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 1 run summon glow_item_frame 354 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 1 run summon glow_item_frame 352 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 1 run summon glow_item_frame 353 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 1 run summon glow_item_frame 354 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.east"]}

# set second page east
execute if score page.change.east flag matches 2 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 2 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 2 run summon glow_item_frame 354 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 2 run summon glow_item_frame 352 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 2 run summon glow_item_frame 353 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 2 run summon glow_item_frame 354 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.east"]}

# set third page east
execute if score page.change.east flag matches 3 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 3 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 3 run summon glow_item_frame 354 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 3 run summon glow_item_frame 352 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 3 run summon glow_item_frame 353 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 3 run summon glow_item_frame 354 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.east"]}

#set forth page east
execute if score page.change.east flag matches 4 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.east"]}
execute if score page.change.east flag matches 4 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.east"]}


# east flag reset
execute unless score page.change.east flag matches -1..0 run scoreboard players set page.change.east flag -1



# north flag setters
execute if score blaster.north variable matches 1 if score page.change.north flag matches 0 run scoreboard players set page.change.north flag 1
execute if score blaster.north variable matches 2 if score page.change.north flag matches 0 run scoreboard players set page.change.north flag 2
execute if score blaster.north variable matches 3 if score page.change.north flag matches 0 run scoreboard players set page.change.north flag 3
execute if score blaster.north variable matches 4 if score page.change.north flag matches 0 run scoreboard players set page.change.north flag 4
execute if score page.change.north flag matches 1.. run kill @e[tag=weapon-display.north]

# set first page north
execute if score page.change.north flag matches 1 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 1 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 1 run summon glow_item_frame 304 101 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 1 run summon glow_item_frame 304 100 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 1 run summon glow_item_frame 304 100 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 1 run summon glow_item_frame 304 100 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.north"]}

# set second page north
execute if score page.change.north flag matches 2 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 2 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 2 run summon glow_item_frame 304 101 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 2 run summon glow_item_frame 304 100 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 2 run summon glow_item_frame 304 100 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 2 run summon glow_item_frame 304 100 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.north"]}

# set third page north
execute if score page.change.north flag matches 3 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 3 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 3 run summon glow_item_frame 304 101 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 3 run summon glow_item_frame 304 100 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 3 run summon glow_item_frame 304 100 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 3 run summon glow_item_frame 304 100 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.north"]}

# set forth page north
execute if score page.change.north flag matches 4 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.north"]}
execute if score page.change.north flag matches 4 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.north"]}


# north flag reset
execute unless score page.change.north flag matches -1..0 run scoreboard players set page.change.north flag -1



# south flag setters
execute if score blaster.south variable matches 1 if score page.change.south flag matches 0 run scoreboard players set page.change.south flag 1
execute if score blaster.south variable matches 2 if score page.change.south flag matches 0 run scoreboard players set page.change.south flag 2
execute if score blaster.south variable matches 3 if score page.change.south flag matches 0 run scoreboard players set page.change.south flag 3
execute if score blaster.south variable matches 4 if score page.change.south flag matches 0 run scoreboard players set page.change.south flag 4
execute if score page.change.south flag matches 1.. run kill @e[tag=weapon-display.south]

# set first page south
execute if score page.change.south flag matches 1 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 1 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 1 run summon glow_item_frame 320 101 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 1 run summon glow_item_frame 320 100 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 1 run summon glow_item_frame 320 100 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 1 run summon glow_item_frame 320 100 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.south"]}

# set second page south
execute if score page.change.south flag matches 2 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 2 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 2 run summon glow_item_frame 320 101 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 2 run summon glow_item_frame 320 100 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 2 run summon glow_item_frame 320 100 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 2 run summon glow_item_frame 320 100 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.south"]}

# set third page south
execute if score page.change.south flag matches 3 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 3 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 3 run summon glow_item_frame 320 101 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 3 run summon glow_item_frame 320 100 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 3 run summon glow_item_frame 320 100 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 3 run summon glow_item_frame 320 100 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.south"]}

# set forth page south
execute if score page.change.south flag matches 4 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.south"]}
execute if score page.change.south flag matches 4 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.south"]}


# south flag reset
execute unless score page.change.south flag matches -1..0 run scoreboard players set page.change.south flag -1