#   Add an example scoreboard objective
scoreboard objectives add example dummy

execute unless score #max_eyes example = #max_eyes example run scoreboard players set #max_eyes example 128


#   Count how many eyes are currently in the End Portal Frame
execute store result score #eyes example run data get storage ioi-pi:output item.tag.eyes


#   If the score of the `#eyes` score holder is not 1024 or greater, put the eyes. Otherwise, play a sound event to indicate that the action has failed
execute unless score #eyes example >= #max_eyes example run function example:eyes_on_frame/on_modify/put_eyes

execute if score #eyes example >= #max_eyes example run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 2


#   Do some clean up
scoreboard players reset #eyes_overflow example
