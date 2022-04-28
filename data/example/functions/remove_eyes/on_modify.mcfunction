#   Add a scoreboard objective for preparation
scoreboard objectives add example dummy

scoreboard players set #64 example 64


#   Count how many eyes will be given
execute store result score #eyes_to_give example run data get storage ioi-pi:output item.tag.eyes


#   Remove the custom NBTs from the End Portal Frame item
data remove storage ioi-pi:output item.tag.display

data remove storage ioi-pi:output item.tag.has_eyes

data remove storage ioi-pi:output item.tag.eyes


#   Prepare the Ender Eye items
function example:remove_eyes/on_modify/prepare_eyes


#   Do some clean up
scoreboard players reset #current_slot example
