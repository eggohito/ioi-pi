#   Count how many Ender Eyes are currently on the cursor
execute store result score #eyes.excess_amount eyes_on_frame run clear @s minecraft:ender_eye{ioi_pi: {selected: 1b, type: "using_item"}} 0


#   Loop this function until there are no more excess Ender Eyes to put
execute if score #eyes.excess_amount eyes_on_frame > #eyes.max_excess_amount eyes_on_frame run clear @s minecraft:ender_eye{ioi_pi: {selected: 1b, type: "using_item"}} 1

execute if score #eyes.excess_amount eyes_on_frame > #eyes.max_excess_amount eyes_on_frame run function example:eyes_on_frame/modify/phase/start/excess_eyes/decrement
