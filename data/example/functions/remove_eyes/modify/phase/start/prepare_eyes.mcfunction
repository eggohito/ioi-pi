#   Append an element to the `eyes` NBT path of the `example:remove_eyes` storage
data modify storage example:remove_eyes root.eyes append value {id: "minecraft:ender_eye"}


#   Set the count of the item of the element
execute if score #eyes_to_give eyes_on_frame matches 65.. run data modify storage example:remove_eyes root.eyes[-1].Count set value 64b

execute if score #eyes_to_give eyes_on_frame matches ..64 store result storage example:remove_eyes root.eyes[-1].Count byte 1 run scoreboard players get #eyes_to_give eyes_on_frame


#   Set the slot of the element
execute store result storage example:remove_eyes root.eyes[-1].Slot byte 1 run scoreboard players get #current_slot eyes_on_frame


#   Recall this function until there are no more eyes to process
scoreboard players add #current_slot eyes_on_frame 1

scoreboard players remove #eyes_to_give eyes_on_frame 64

execute if score #eyes_to_give eyes_on_frame matches 1.. run function example:remove_eyes/modify/phase/start/prepare_eyes
