scoreboard objectives add wins dummy "Wins"

scoreboard objectives add var-game dummy
scoreboard objectives add var-blaster dummy
scoreboard objectives add var-ready dummy
scoreboard objectives add var-death dummy
scoreboard objectives add var-win dummy
scoreboard objectives add var-fireworks dummy
scoreboard objectives add var-id dummy
scoreboard objectives add var-punch minecraft.custom:minecraft.damage_dealt
scoreboard objectives add var-punch-timer dummy
scoreboard objectives add var-kowloon dummy

scoreboard objectives add pages trigger
scoreboard objectives add options trigger

tellraw @a [{"text": "[Slug Arena]", "color": "green"}, {"text": " Datapack reloaded!", "color": "white"}]