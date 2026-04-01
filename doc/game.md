# The Game
## The two states
The game runs in two states, ***On*** or ***Off***. These are designated to the folders of their name, each containing an `execute` folder and a `condition.mcfuntion` file.  
Every file that needs to be running in either state must be placed in the execute folder, then a caller should be added to the `condition.mcfunction`.  

## Why?
By seperating code not by function, but by when it is called, its easier and cleaner to understand. Focus on what matters at execution, not what is barely related.


## Other folders
Anything outside of `game_off` and `game_on` should be treated as running forever. As of when in game and as of when outside.