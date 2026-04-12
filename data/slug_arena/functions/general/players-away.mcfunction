execute unless entity @a[name=lazynor_cat] unless entity @a[name=estecat] run scoreboard objectives setdisplay sidebar
execute unless entity @a[name=lazynor_cat] unless entity @a[name=estecat] run scoreboard players set kill.slugs var-game 1
execute unless entity @a[name=lazynor_cat] unless entity @a[name=estecat] run gamerule sendCommandFeedback false
execute unless entity @a[name=lazynor_cat] unless entity @a[name=estecat] if score map var-game matches -1 run scoreboard players set set-map var-game 1

execute if entity @a[name=lazynor_cat] run gamerule sendCommandFeedback true