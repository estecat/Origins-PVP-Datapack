scoreboard objectives add variable dummy "Variable"
scoreboard objectives add flag dummy "Flags"
scoreboard objectives add pages trigger "Pages"
scoreboard objectives add team-deaths dummy "Team Deaths"
scoreboard objectives add options dummy "Options"
scoreboard objectives add wins dummy "Wins"
scoreboard objectives add id dummy "Game ID"

tellraw @a [{"text": "[Slug Arena]", "color": "green"}, {"text": " Datapack reloaded!", "color": "white"}]