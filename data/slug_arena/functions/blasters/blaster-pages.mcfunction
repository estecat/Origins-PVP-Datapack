# Chosen
execute as @e[type=glow_item_frame,tag=weapon-display.north] unless data entity @s Item run scoreboard players set north-chose var-blaster 1
execute as @e[type=glow_item_frame,tag=weapon-display.south] unless data entity @s Item run scoreboard players set south-chose var-blaster 1
execute as @e[type=glow_item_frame,tag=weapon-display.east] unless data entity @s Item run scoreboard players set east-chose var-blaster 1
execute as @e[type=glow_item_frame,tag=weapon-display.west] unless data entity @s Item run scoreboard players set west-chose var-blaster 1

execute as @e[type=glow_item_frame,tag=weapon-display.north] unless data entity @s Item run kill @e[type=glow_item_frame,tag=weapon-display.north]
execute as @e[type=glow_item_frame,tag=weapon-display.south] unless data entity @s Item run kill @e[type=glow_item_frame,tag=weapon-display.south]
execute as @e[type=glow_item_frame,tag=weapon-display.east] unless data entity @s Item run kill @e[type=glow_item_frame,tag=weapon-display.east]
execute as @e[type=glow_item_frame,tag=weapon-display.west] unless data entity @s Item run kill @e[type=glow_item_frame,tag=weapon-display.west]


# █▄░█ █▀█ █▀█ ▀█▀ █░█
# █░▀█ █▄█ █▀▄ ░█░ █▀█

# Kill
execute unless score north-refresh var-blaster matches -1..0 run kill @e[tag=weapon-display.north]

# First page
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 1 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 1 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 1 run summon glow_item_frame 304 101 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 1 run summon glow_item_frame 304 100 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 1 run summon glow_item_frame 304 100 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 1 run summon glow_item_frame 304 100 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.north"]}

# Second page
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 2 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 2 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 2 run summon glow_item_frame 304 101 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 2 run summon glow_item_frame 304 100 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 2 run summon glow_item_frame 304 100 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 2 run summon glow_item_frame 304 100 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.north"]}

# Third page
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 3 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 3 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 3 run summon glow_item_frame 304 101 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 3 run summon glow_item_frame 304 100 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 3 run summon glow_item_frame 304 100 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 3 run summon glow_item_frame 304 100 -115 {Facing:5,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.north"]}

# Fourth page
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 4 run summon glow_item_frame 304 101 -113 {Facing:5,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.north"]}
execute if score north-refresh var-blaster matches 1 if score north var-blaster matches 4 run summon glow_item_frame 304 101 -114 {Facing:5,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.north"]}

# End
execute unless score north-refresh var-blaster matches -1..0 run scoreboard players set north-refresh var-blaster -1


# █▀ █▀█ █░█ ▀█▀ █░█
# ▄█ █▄█ █▄█ ░█░ █▀█

# Kill
execute unless score south-refresh var-blaster matches -1..0 run kill @e[tag=weapon-display.south]

# First page
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 1 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 1 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 1 run summon glow_item_frame 320 101 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 1 run summon glow_item_frame 320 100 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 1 run summon glow_item_frame 320 100 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 1 run summon glow_item_frame 320 100 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.south"]}

# Second page
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 2 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 2 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 2 run summon glow_item_frame 320 101 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 2 run summon glow_item_frame 320 100 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 2 run summon glow_item_frame 320 100 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 2 run summon glow_item_frame 320 100 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.south"]}

# Third page
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 3 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 3 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 3 run summon glow_item_frame 320 101 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 3 run summon glow_item_frame 320 100 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 3 run summon glow_item_frame 320 100 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 3 run summon glow_item_frame 320 100 -31 {Facing:4,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.south"]}

# Fourth page
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 4 run summon glow_item_frame 320 101 -33 {Facing:4,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.south"]}
execute if score south-refresh var-blaster matches 1 if score south var-blaster matches 4 run summon glow_item_frame 320 101 -32 {Facing:4,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.south"]}

# End
execute unless score south-refresh var-blaster matches -1..0 run scoreboard players set south-refresh var-blaster -1


# █▀▀ ▄▀█ █▀ ▀█▀
# ██▄ █▀█ ▄█ ░█░

# Kill
execute unless score east-refresh var-blaster matches -1..0 run kill @e[tag=weapon-display.east]

# First page
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 1 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 1 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 1 run summon glow_item_frame 354 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 1 run summon glow_item_frame 352 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 1 run summon glow_item_frame 353 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 1 run summon glow_item_frame 354 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.east"]}

# Second page
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 2 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 2 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 2 run summon glow_item_frame 354 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 2 run summon glow_item_frame 352 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 2 run summon glow_item_frame 353 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 2 run summon glow_item_frame 354 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.east"]}

# Third page
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 3 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 3 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 3 run summon glow_item_frame 354 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 3 run summon glow_item_frame 352 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 3 run summon glow_item_frame 353 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 3 run summon glow_item_frame 354 100 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.east"]}

# Fourth page
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 4 run summon glow_item_frame 352 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.east"]}
execute if score east-refresh var-blaster matches 1 if score east var-blaster matches 4 run summon glow_item_frame 353 101 -81 {Facing:3,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.east"]}

# End
execute unless score east-refresh var-blaster matches -1..0 run scoreboard players set east-refresh var-blaster -1


# █░█░█ █▀▀ █▀ ▀█▀
# ▀▄▀▄▀ ██▄ ▄█ ░█░

# Kill
execute unless score west-refresh var-blaster matches -1..0 run kill @e[tag=weapon-display.west]

# First page
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 1 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:overpass_shooter_avg_1",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 1 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:outlaw_mk_3",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 1 run summon glow_item_frame 270 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:defender_slipstream_xvl",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 1 run summon glow_item_frame 272 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:baryonyx_sandstorm_tfg",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 1 run summon glow_item_frame 271 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:outlaw_mk_4",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 1 run summon glow_item_frame 270 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:shock_beak_9",Count:1b},Tags:["weapon-display.west"]}

# Second page
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 2 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:thug_shot_6",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 2 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:slick_mud_101",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 2 run summon glow_item_frame 270 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:draco_lightningstorm",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 2 run summon glow_item_frame 272 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:spectro_w_15_p",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 2 run summon glow_item_frame 271 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:ribbitshot_clu_81",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 2 run summon glow_item_frame 270 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:flashstinger_tx_8",Count:1b},Tags:["weapon-display.west"]}

# Third page
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 3 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:imperial_silencer_mk_5",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 3 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:spicy_fr_0g",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 3 run summon glow_item_frame 270 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:libertas",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 3 run summon glow_item_frame 272 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:scrapshot_mk_9",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 3 run summon glow_item_frame 271 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:golden_experiencev_2",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 3 run summon glow_item_frame 270 100 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:octoblast_v_10",Count:1b},Tags:["weapon-display.west"]}

# Fourth page
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 4 run summon glow_item_frame 272 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:blitzbreak_gen_1",Count:1b},Tags:["weapon-display.west"]}
execute if score west-refresh var-blaster matches 1 if score west var-blaster matches 4 run summon glow_item_frame 271 101 -65 {Facing:2,Invisible:1b,Item:{id:"slugterra:blast_saber_mk_1",Count:1b},Tags:["weapon-display.west"]}

# End
execute unless score west-refresh var-blaster matches -1..0 run scoreboard players set west-refresh var-blaster -1