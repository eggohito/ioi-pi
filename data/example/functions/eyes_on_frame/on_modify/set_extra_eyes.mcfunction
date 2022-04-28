#   Count how many Ender Eyes are currently on the cursor
execute store result score #extra_eyes example run clear @s minecraft:ender_eye{ioi-pi: {selected: 1b, extra: 1b}} 0


#   If the score of the `#extra_eyes` score holder is not less than the score of the `#set_extra_eyes_to` score holder, remove 1 of the Ender Eyes and recall this function
execute unless score #extra_eyes example <= #set_extra_eyes_to example run clear @s minecraft:ender_eye{ioi-pi: {selected: 1b, extra: 1b}} 1

execute unless score #extra_eyes example <= #set_extra_eyes_to example run function example:eyes_on_frame/on_modify/set_extra_eyes
