scoreboard objectives add example dummy

scoreboard players set #64 example 64


execute store result score #eyes_to_give example run data get storage ioi-pi:output item.tag.eyes


data remove storage ioi-pi:output item.tag.has_eyes

data remove storage ioi-pi:output item.tag.eyes


function example:remove_eyes/give_eyes


scoreboard players reset #current_slot example
