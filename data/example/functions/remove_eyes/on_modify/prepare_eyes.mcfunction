#   Append an element to the `eyes` NBT path of the `example:remove_eyes` storage
data modify storage example:remove_eyes eyes append value {id: "minecraft:ender_eye"}


#   Set the count of the item of the element
execute if score #eyes_to_give example > #64 example run data modify storage example:remove_eyes eyes[-1].Count set value 64b

execute if score #eyes_to_give example <= #64 example store result storage example:remove_eyes eyes[-1].Count byte 1 run scoreboard players get #eyes_to_give example


#   Set the slot of the element
execute store result storage example:remove_eyes eyes[-1].Slot byte 1 run scoreboard players get #current_slot example


#   Recall this function until there are no more eyes to process
scoreboard players add #current_slot example 1

scoreboard players operation #eyes_to_give example -= #64 example

execute if score #eyes_to_give example matches 1.. run function example:remove_eyes/on_modify/prepare_eyes
