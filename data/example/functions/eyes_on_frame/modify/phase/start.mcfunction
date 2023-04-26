#   Add an example scoreboard objective
scoreboard objectives add eyes_on_frame dummy

execute unless score #eyes.max_amount eyes_on_frame = #eyes.max_amount eyes_on_frame run scoreboard players set #eyes.max_amount eyes_on_frame 128


#   Count how many eyes are currently in the End Portal Frame
execute store result score #eyes.stored_amount eyes_on_frame run data get storage ioi-pi:io root.item.tag.StoredEyes


#   Put the eyes in the End Portal Frame if it's not more than the specified max value. Otherwise, play a sound event to indicate that the action has failed
execute unless score #eyes.stored_amount eyes_on_frame >= #eyes.max_amount eyes_on_frame run function example:eyes_on_frame/modify/phase/start/put_eyes

execute if score #eyes.stored_amount eyes_on_frame >= #eyes.max_amount eyes_on_frame run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 2
