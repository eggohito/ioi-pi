data modify storage example:storage eyes append value {id: "minecraft:ender_eye"}


execute if score #eyes_to_give example > #64 example run data modify storage example:storage eyes[-1].Count set value 64b

execute if score #eyes_to_give example <= #64 example store result storage example:storage eyes[-1].Count byte 1 run scoreboard players get #eyes_to_give example

execute store result storage example:storage eyes[-1].Slot byte 1 run scoreboard players get #current_slot example


scoreboard players add #current_slot example 1

scoreboard players operation #eyes_to_give example -= #64 example

execute if score #eyes_to_give example matches 1.. run function example:remove_eyes/give_eyes
