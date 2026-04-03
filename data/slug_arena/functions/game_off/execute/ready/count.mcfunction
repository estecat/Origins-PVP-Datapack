scoreboard players set count var-ready 0
execute unless score north var-ready matches -1 run scoreboard players operation count var-ready += north var-ready
execute unless score south var-ready matches -1 run scoreboard players operation count var-ready += south var-ready
execute unless score east var-ready matches -1 run scoreboard players operation count var-ready += east var-ready
execute unless score west var-ready matches -1 run scoreboard players operation count var-ready += west var-ready