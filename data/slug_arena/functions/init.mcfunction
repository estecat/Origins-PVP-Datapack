scoreboard objectives add wins dummy "Wins"

scoreboard objectives add var-game dummy
scoreboard objectives add var-blaster dummy
scoreboard objectives add var-ready dummy
scoreboard objectives add var-death dummy
scoreboard objectives add var-win dummy
scoreboard objectives add var-fireworks dummy
scoreboard objectives add var-id dummy

scoreboard objectives add pages trigger
scoreboard objectives add options trigger

tellraw @a [{"text": "[Slug Arena]", "color": "green"}, {"text": " Datapack reloaded!", "color": "white"}]